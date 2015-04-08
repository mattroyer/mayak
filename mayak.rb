require 'fileutils'

class Mayak

  def initialize(to_directory)
    @to_directory = to_directory

    cleanup_directories.each do |dir|
      move_files dir
    end
  end

  def cleanup_directories
    ["#{ENV['USERPROFILE']}/Desktop", "#{ENV['USERPROFILE']}/Downloads"]
  end

  def dictionary
    {
      Images: ['jpg', 'jpeg', 'png', 'gif', 'svg'],
      Spreadsheets: ['xls', 'xlsx'],
      Docs: ['txt', 'doc', 'docx', 'rtf'],
      Sites: ['url', 'html', 'htm'],
      PDFs: ['pdf']
    }
  end

  def create_directory directory
    FileUtils.mkdir_p directory
  end

  def move_files current_dir
    dictionary.each do |dir, types|
      files = Dir.entries(current_dir).select { |f| f.match /\.(#{types.join('|')})$/i }

      files.each do |file|
        create_directory "#{@to_directory}/#{dir}"
        FileUtils.mv("#{current_dir}/#{file}", "#{@to_directory}/#{dir}/#{file}")
      end

    end
  end
end
