# 🧪 Log File Generation and Aging Script

## 🚀 Overview

A bash utility script designed to generate dummy log files with configurable age characteristics. Perfect for testing log management and archiving scripts!

## ✨ Features

- 📂 Creates log file directories automatically
- 🔢 Generates multiple dummy log files
- 🕰️ Randomly ages files between 5 and 10 days
- 📊 Provides file age verification

## 🛠️ Prerequisites

- Bash shell
- Basic system utilities (dd, touch)
- Sufficient disk space

## 📋 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/log-file-generator.git
   ```

2. Make the script executable:
   ```bash
   chmod +x create_aged_logs.sh
   ```

## 🚦 Usage

```bash
# Basic usage
./create_aged_logs.sh

# Verify created files
find /path/to/dir -name "*.log" -printf "%T+ %p\n" | sort
```

## 🔧 Customization

Easily modify the script to:
- Change number of log files generated
- Adjust file size
- Modify age range
- Specify different base directory

### 📏 File Size Configuration

File size is controlled by `dd` parameters:
```bash
dd if=/dev/zero of="file.log" bs=1M count=10
```
- `bs=1M`: Block size (1 megabyte)
- `count=10`: Number of blocks

Quick size reference:
- `bs=1M count=5`  = 5MB files
- `bs=1M count=10` = 10MB files
- `bs=1M count=20` = 20MB files
- `bs=512K count=40` = 20MB files (alternative method)

Modify these parameters to adjust generated log file sizes as needed.

## 📝 What the Script Does

1. Creates log backup directory structure
2. Generates 10 dummy log files in each subdirectory
3. Randomly ages files between 5 and 10 days
4. Prints modification times for verification

## 🎯 Use Cases

- Testing log archiving scripts
- Simulating log rotation scenarios
- Creating test environments for log management tools

## ⚠️ Caution

- Generates files filled with zeros
- Will create files in the specified directory
- Intended for testing purposes only

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## 💡 Pro Tips

- Use with log archiving scripts for comprehensive testing
- Adjust file generation parameters as needed
- Always test in a safe, isolated environment

---

🌟 **Happy Log File Generation!** 🌟

## Author
Created by a tech enthusiast Mihai Stroescu a.k.a Z3r0L1nk who loves automation and efficient server management. Contributions and improvements are welcome!

## � License
This script is provided "as-is" without any warranty. Feel free to modify it as needed for your environment.