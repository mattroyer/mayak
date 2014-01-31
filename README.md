Mayak (маяк)
============

##### Shine some light on your system. Make it cleaner to navigate.

**Goal**: Automate the cleanup of your folders. Create directories and easily move files to them.

> Example:

```
base = "#{ENV['USERPROFILE']}/Desktop"
directories_and_files = {:Images => ['jpg', 'jpeg', 'png', 'gif'], :PDFs => ['pdf'], :Spreadsheets => ['xls', 'xlsx'], :Sites => ['url', 'html', 'htm'], :Docs => ['txt', 'doc', 'docx', 'rtf']}

Mayak.new base, directories_and_files
```

The previous block of code will add the keys in the hash as directories to your base directory. It will then look at what types of file extensions that folder requires and will move the files in your base directory to their corresponding directory.

## Tasks
  - Implement JSON config file with accompanying code which holds the information for base_directory, file_directories, and files
  - Create a gem
  - Create an EXE with Ocra which uses config file for easy reuse

## Motivation

This started out as a way to clean up my desktop quickly. But as I worked with the files and structure, I found it was useful for other directories as well.

###### P.S. маяк means lighthouse in Russian
