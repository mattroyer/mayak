Mayak (маяк)
============

##### Shine some light on your system. Make it cleaner to navigate.

**Goal**: Automate the cleanup of your folders. Create directories and easily move files to them.

> Example:

```
Mayak.new "#{ENV['USERPROFILE']}/Documents"
```

The above code above will take files from the directories stored in the `cleanup_directories` method and use the extensions and folders held in the `dictionary` method to filter the files into their proper folders in the directory of your choosing. Above, the `Documents` folder of the user's directory is used.

## Tasks
  - Implement JSON config file with accompanying code which holds the information for base_directory, file_directories, and files
  - Create a gem
  - Create an EXE with Ocra which uses config file for easy reuse

## Motivation

This started out as a way to clean up my desktop quickly. But as I worked with the files and structure, I found it was useful for other directories as well.

###### P.S. маяк means lighthouse in Russian
