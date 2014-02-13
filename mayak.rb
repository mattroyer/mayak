require 'fileutils'

class Mayak

  def initialize(base_directory, directories_and_files)
    @base_directory = base_directory
    @directories_and_files = directories_and_files
    @current_dir = Dir.entries("#{@base_directory}").select { |file| File.file?("#{@base_directory}/#{file}") }

    move_files
  end

  def move_files
    create = Proc.new do |dir|
      FileUtils.mkdir_p(dir)
    end

    @directories_and_files.each do |dir, types|
      files = @current_dir.select { |f| f.match /\.(#{types.join('|')})$/i }
      create.call "#{@base_directory}/#{dir}"

      move = Proc.new do |arr|
        arr.each do |element|
          FileUtils.mv("#{@base_directory}/#{element}", "#{@base_directory}/#{dir}/#{element}")
        end
      end

      move.call files
    end
  end
end
