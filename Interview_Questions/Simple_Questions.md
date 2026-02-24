### 1. Differrence Between Server and client?
### Server
A server is a computer or system that provides information, resources, or services to other computers over a network.

**Examples:**
- Web Server
- Database Server
- Application Server

### Client: 
A client is a device or application that sends a request to a server to get information or services.

**Examples:**
- Web Browser
- Mobile Application
- Desktop Application

---

### Simple Flow

Client → Request → Server  
Server → Response → Client

---

### 2. Differnce between web server and application server
### Web Server
A web server handles HTTP requests and returns static files such as HTML pages, images, CSS, and JavaScript.

**Examples:**
- Nginx
- Apache HTTP Server

### Application Server
An application server processes application logic and interacts with databases to generate dynamic responses.

**Examples:**
- Node js app server
- Apche Tomcat

---

### 3. what is linux Introdiuction to linux os?
### Introduction to Linux
Linux is a free and open-source operating system based on Unix that helps run computers, servers, and applications.

### Why Linux is Popular
- Open source (anyone can view and modify the code)
- Secure and stable
- Free to use
- Highly customizable
- Used in servers and cloud platforms

### Where Linux is Used
- Web Servers
- Cloud Platforms
- Mobile Phones (Android is based on Linux)
- Supercomputers
- DevOps environments

---

### 4. Difference between linux vs windows
### Linux:
- Open-source operating system
- Free to use
- Mostly used in servers
- Highly customizable
- More secure and stable
- Command-line focused

  ### Windows:
  - Proprietary operating system
  - Requires license
  - Mostly used in personal computers
  - Limited customization
  - More vulnerable to viruses

---

### 5.what is kernet shell and boot loader in linux?
### Kernel:
The kernel is the core part of the Linux operating system.
It manages the communication between hardware and software.

### Shell:
The shell is a command-line interface that allows users to interact with the operating system.

**Examples:**
- Bash
- Sh
- Zsh
- Fish

### Bootloader
The bootloader is a program that starts the operating system when the computer turns on.

Common Linux bootloader:
- GNU GRUB

---

### 6. Linux System Architecture
```
+----------------------+
|      Applications    |
+----------------------+
|        Shell         |
+----------------------+
|        Kernel        |
+----------------------+
|       Hardware       |
+----------------------+
```
Linux architecture consists of hardware, kernel, shell, and applications working together to run the operating system.

---

### 7. Hardware in Linux with commands
Hardware refers to the physical components of a computer that the Linux operating system uses to run programs and perform tasks.

### Hardware Information Commands in Linux
```
lscpu
```
Shows CPU information.

```
lsblk
```
Shows disk and storage devices.

```
free -h
```
Shows memory usage.

---

### 8. Differene between hard link and soft link ?
It basically means create a shortcut

### Soft Link (Symbolic Link)
A soft link is a pointer that points to the original file path.

Example command:
```
ln -s file1.txt linkfile.txt
```

### Hard link:
A hard link is another name for the same file.
Both files share the same inode and data.

Example command:
```
ln file1.txt file2.txt
```

---

### 9. The difference between awk vs sed command?
Both awk and sed are used for text processing in Linux, but they are used for different purposes.

#### sed (stream editor)
sed is mainly used to search, replace, insert, or delete text in a file

**Example:**
```sed -i 's/dev/prod/g' config.yaml```

#### awk
awk is used to text processing and reporting.
It is mainly used to work with columns and structured data (CSV and TSV).

**Example:**
```awk '{print $1}' access.log```
