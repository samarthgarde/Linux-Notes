# Linux command Guide
### Basic commands
- ```man <command>```: View manuals with essential information for commands.
- ```tldr <command>```: Get consise imformation and imformation for commands.
- ```/```: is the main directory of Linux.
- ```/root```:is the home directory of the root (administrator) user.
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

## System-level commands
- ```uname```: display information about the Linux system
- ```uname -r```:Shows kernel version
- ```uptime```: Current system time
- ```who```:Shows all users currently logged into the system
- ```whoami```:Shows current logged-in user
- ```which```: find the location of a command
- ```id```:displays the user ID, group ID, and group information of a user in Linux
- ```sudo```: allows a permitted user to run commands with superuser (root) privileges.
- ```apt```: is a Linux package manager used to install, update, and remove software packages. (Debian Based)

---

## User and Group management commands
- ```useradd -m```:creates a new user and automatically creates their home directory
**Example**: ```sudo useradd -m <username>```
- ```sudo passwd username```: Set Password for the User
- ```su <username>```: Switch another user
- ```sudo userdel -r <username>```: removes an existing user from the system.
- ```sudo groupadd groupname```: creates a new group in the system
- ```sudo groupdel <groupname>```: delete group
- ```sudo gpasswd -a username groupname```: Add User to Group
- ```sudo gpasswd -M user1,user2,user3 groupname```: Add Multiple Users to Group
- ```cat /etc/group```: You can check group

---

## Compression and Archiving
- ```zip -r <filename.zip> <directory_name>``` : Zip folder
- ```unzip <filename>``` : unzippedd/decompress file
- ```gzip -2 -r -v folder_name```: Compress files/folders with options.
- ```gunzip```: Decompress compressed files.
- ```tar -cf archive.tar file1 file2```: Create an archive with tar
- ```tar -xf archive.tar```: Extract files from an archive
- ```scp -i "<private key path>" <source file> <destination>``` : used to remotely transfer files or folders between computers over a network using SSH.

---

## Text Manipulation
- ```cat file1 > file2 >> file3```: Copy and append content between files.
- ```less filename```: Display file content with a user-friendly interface.
- ```head filename```: display first 10 lines of a command.
- ```tail filename```: Display last 10 line of acommand
- ```wc -l -w -c file.txt```: Count lines, words, and bytes in a file.
- ```grep -i error file.txt (ignore case)```: Search text inside files.
- ```cut -d "," -f2 data.csv```: extract specific columns from text
- ```awk '{print $1}' file.txt```: text processing and reporting.
- ```sed 's/error/warning/' file.txt```: modify text in a file or output.
- ```sort```: sort lines of a file
- ```unique```: remove duplicate lines.

---

## Permissions and Ownership

In Linux, every file and directory has three types of permissions:

- **r** = Read
- **w** = Write
- **x** = Execute

These permissions are assigned to:
- **Owner (User)**
- **Group**
- **Others**

### Permission Values Table

Permission | Value |
|----------|-------|
|   ---    |  0    |
|   --x    |  1    |
|   -w-    |  2    |
|   -wx    |  3    |
|   r--    |  4    |
|   r-x    |  5    |
|   rw-    |  6    |
|   rwx    |  7    |

### How to Change Permissions
### Symbolic Method
```
chmod u+x file.sh
chmod g-w file.txt
chmod o+r file.txt
```

### Numeric Method
```
chmod 755 script.sh
chmod 644 file.txt
```

## Common Permission Examples

| Command | Meaning |
|--------|---------|
| chmod 777 file | Everyone can read, write and execute |
| chmod 755 file | Owner full access, others read & execute |
| chmod 700 file | Only owner has access |
| chmod 644 file | Owner read/write, others read only |

---

- ```chown <owner> <file>```: Change file owner.
- ```chown -R <owner> <file>```: Change owner recursively.
- ```chown <owner>:<group> <file>```: Change owner and group.
- ```chgrp <group> <file>```: Change group ownership.
- ```umask -S```: used to control the default permissions for newly created files and directories

---

## Disk Usage
- ```du```: Calculate directory size in bytes.
- ```du -m```: Calculate size in megabytes.
- ```du -g```: Calculate size in gigabytes.
- ```du -h```: Human-readable size notation.
- ```df```: Display disk usage information.
- ```df -h```: Human-readable size notation.

---

## Linux File System

The **Linux file system** is a hierarchical, tree-structured system that starts from the **root directory `/`**.  
All files and directories originate from this root.

Example structure:
/
├── bin
├── boot
├── dev
├── etc
├── home
├── lib
├── var
└── usr

---

## Root Directory `/`

`/` is the **top-level directory** in Linux.  
Every file and directory exists under this root.

Example:
/home/user/file.txt

---

## Inodes

**Inodes** store metadata about files.

They contain information such as:

- File permissions  
- File size  
- File owner  
- File location on disk  
- Timestamps  

Note: Inodes **do not store the filename**, only the metadata.

---

## Important Linux Directories

### `/bin` and `/usr/bin`

These directories contain **essential command binaries** used by all users.

Examples:
ls
cp
mv
cat
echo

---

### `/etc`

The `/etc` directory contains **system-wide configuration files**.

These files control how Linux behaves.

Key points:

- Most files in `/etc` are **text configuration files**
- Used by the **OS, services, and applications**

Examples:

---

### `/home`

`/home` stores **personal directories for users**.

Example:
/home/samarth
/home/user1


### What is inside a user's home directory?

Inside `/home/username/` you will find:

- Documents  
- Downloads  
- Projects  
- Personal files  
- User settings  
- Application configuration files

---

### `/var` (Variable Data)

The `/var` directory stores **data that changes frequently**.

Examples include:

- System logs  
- Running service data  
- Mail  
- Cache  
- Print queues  

Examples:

/var/log
/var/mail
/var/cache

This directory **continues growing while the system runs**.

---

### `/boot`

The `/boot` directory contains files required to **start the Linux operating system**.

Without `/boot`, Linux cannot start.

Important contents:

- Linux kernel  
- Bootloader files  
- Initial RAM disk  

### Boot Process (Simple Flow)

1. Computer Power ON  
2. BIOS / UEFI starts  
3. Bootloader loads from `/boot`  
4. Linux Kernel loads  
5. System starts services  

---

### `/dev`

The `/dev` directory contains **device files**.

These files represent hardware and virtual devices and act as a **bridge between software and hardware**.

## Physical Devices

Examples:

- Hard disks  
- SSDs  
- USB drives  
- Network devices

---

### `/lib`

The `/lib` directory stores **essential shared libraries** and **kernel modules** required for the system to run.

Programs in `/bin` and `/usr/bin` depend on these libraries.

---

## Common Linux File System Types

### EXT4 (Fourth Extended File System)

- Most common Linux file system  
- Default in many distributions  
- Stable and reliable  

---

### XFS

- High-performance journaling file system  
- Suitable for large-scale systems  
- Common in enterprise environments  

---

### Btrfs (B-tree File System)

Advanced features:

- Snapshots  
- Data integrity  
- Storage pooling  

---

### F2FS (Flash-Friendly File System)

Optimized for flash-based storage such as:

- SSDs  
- SD cards  
- Embedded devices  

---

### SSH in Linux
SSH (Secure Shell) is a network protocol used to securely connect to another computer or server over a network.

### Login to a remote server
```
chmod 400 <key pair name>
```
```
ssh -i <key pair name> ubuntu@<its public DNS
```

---

## Networking commands:
- ```ping```: To check network connectivity between two systems.
- ```netstat```: view network connections, open ports, routing tables, and network statistics on a system
- ````ifconfig```: view and manage network interfaces on a Linux system.
- 


