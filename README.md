# Linux command Guide

### Basic commands

- ```man <command>```: View manuals with essential information for commands.
- ```tldr <command>```: Get consise imformation and imformation for commands.
- ```cd /```: change the root directory
- ```cd ~```: change to the users directory
- ```.```: Current Diectory
- ```..```: parent directory
- ```...```: Grandparent directory and so on.
- ```ls -al /bin```: List all (-a) in long format (-l) in the /bin directory.
- ```mkdir <dir1> <dir2> <dirn>```: Create multiple directories.
- ```mkdir -p <dir>/<dir>```: Create nested directories using the -p flag.
- ```rm -rf <dir>```: Remove directory recursively and forcefully.
- ```mv <dir1/file1> <dir2/file2>```: Rename or move files/directories.
- ```mv <file> <file> <folder>```: Move files to a folder.
- ```cp -r <dir> <dir>```: Copy folders recursively.
- ```cp <file1> <file2>```: Copy files.

👉 [Check out my Vim Tutorial!](Vim/vim.sh)

## File and Directory Operations

- ```xdg-open <filename>```: Open a file.
- ```xdg-open -a <application name>```: Run an application.
- ```gedit <file>```: Open a file using the gedit text editor.
- ```gedit *.ext```: Open all files with a given extension.
- ```touch <file>```: Create an empty file or update its timestamp
- ```find <root path> -name '<file>.<ext>'```: Search for files by name.
- ```find <root path> -type d -name src```: Find directories by name.
- ```find <dir1> <dir2> -name <file>```: Search under multiple root trees.
- ```find . -type f -size +100k -size -1M```: Search files by size range.
- ```find . -type f -mtime +3```: Search files edited more than 3 days ago.
- ```find . -type f -exec cat {} \;```: Execute a command on search results.

---

## Compression and Archiving
- ```gzip -2 -r -v folder_name```: Compress files/folders with options.
- ```gunzip```: Decompress compressed files.
- ```tar -cf archive.tar file1 file2```: Create an archive with tar
- ```tar -xf archive.tar```: Extract files from an archive

## Text Manipulation
- ```cat file1 > file2 >> file3```: Copy and append content between files.
- ```less filename```: Display file content with a user-friendly interface.
- ```tail```: Display the end of a file (useful for log files).
- ```wc -l -w -c file.txt```: Count lines, words, and bytes in a file.
- ```grep```: Search for patterns in files.

## Permissions and Ownership
- chown <owner> <file>: Change file owner.
- chown -R <owner> <file>: Change owner recursively.
- chown <owner>:<group> <file>: Change owner and group.
- chgrp <group> <file>: Change group ownership.
- chmod: Change file permissions.
- chmod 777 <filename>: Set permissions using numeric representation.
- umask -S: Display the default permissions mask.

## Disk Usage
- ```du```: Calculate directory size in bytes.
- ```du -m```: Calculate size in megabytes.
- ```du -g```: Calculate size in gigabytes.
- ```du -h```: Human-readable size notation.
- ```df```: Display disk usage information.
- ```df -h```: Human-readable size notation.
