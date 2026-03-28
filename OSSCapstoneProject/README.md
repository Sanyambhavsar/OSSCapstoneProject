# OSS Audit 24MIP10117

**Course:** Open Source Software | OSS NGMC
**University:** VIT Bhopal


## Student Details

| Student Name : Sanyam Bhavsar
| Registration Number : 24MIP10124
| Chosen Software : Python
| License : PSF License v2
| Slot : B22
| Date of Submission : 28-03-2026


## About the Chosen Software

Python is a free and open source, high-level programming language originally created by Guido van Rossum in 1989. It is distributed under the PSF (Python Software Foundation) License, which allows anyone to freely use, study, modify, and distribute the software. Python is today the most popular programming language in the world, used in web development, data science, automation, and artificial intelligence.


## Repository Structure

```
oss-audit-[rollnumber]/
├── README.md
├── script1_system_identity.sh
├── script2_package_inspector.sh
├── script3_disk_audit.sh
├── script4_log_analyzer.sh
└── script5_manifesto.sh
```


## Shell Scripts

### Script 1 — System Identity Report

**File:** `script1_system_identity.sh`

**Purpose:** Displays a formatted welcome banner showing the Linux distribution name, kernel version, currently logged-in user, home directory path, system uptime, current date and time, Python version installed, and a note about both the OS license (GPL v2) and Python's PSF License.

**Concepts used:**
- Variables and command substitution `$(...)`
- Reading `/etc/os-release` for distro detection
- `uname`, `whoami`, `uptime`, `date` commands
- Formatted `echo` output with alignment

**Run:**
```bash
chmod +x script1_system_identity.sh
./script1_system_identity.sh
```


### Script 2 — FOSS Package Inspector

**File:** `script2_package_inspector.sh`

**Purpose:** Checks whether Python 3 is installed on the system, retrieves its version and license information from the package manager, and uses a `case` statement to print a one-line open source philosophy note about the package. Also checks for pip availability.

**Concepts used:**
- `if-then-else` for install checking
- `case` statement with multiple package patterns
- `dpkg -l` with `grep` for package details
- `python3 --version` for version output
- Pipes for field extraction

**Run:**
```bash
chmod +x script2_package_inspector.sh
./script2_package_inspector.sh
```


### Script 3 — Disk and Permission Auditor

**File:** `script3_disk_audit.sh`

**Purpose:** Loops through a set of important Linux system directories and reports the permissions, owner, group, and disk usage of each one. Also checks and reports on Python-specific directories such as `/usr/lib/python3` and `/etc/python3`.

**Concepts used:**
- `for` loop over an array using `"${DIRS[@]}"`
- `ls -ld` with `awk` to extract permissions and ownership
- `du -sh` and `cut -f1` for human-readable disk size
- `[ -d "$DIR" ]` conditional to check directory existence

**Run:**
```bash
chmod +x script3_disk_audit.sh
./script3_disk_audit.sh
```


### Script 4 — Log File Analyzer

**File:** `script4_log_analyzer.sh`

**Purpose:** Accepts a log file path and a keyword as arguments, reads the file line by line, counts how many lines contain the keyword, and prints the last 5 matching lines as a summary. Falls back to `/var/log/dpkg.log` with keyword `install` if no arguments are given.

**Concepts used:**
- `while IFS= read -r` loop for safe line-by-line reading
- `if-then` inside loop with `grep -iq` for case-insensitive match
- Counter variable with `COUNT=$((COUNT + 1))`
- `$1`, `$2` positional arguments with `${2:-"error"}` default
- `tail -5` to show last matching lines

**Run:**
```bash
chmod +x script4_log_analyzer.sh
./script4_log_analyzer.sh
./script4_log_analyzer.sh /var/log/syslog error
./script4_log_analyzer.sh /var/log/dpkg.log install
```


### Script 5 — Open Source Manifesto Generator

**File:** `script5_manifesto.sh`

**Purpose:** Interactively asks the user three questions about their relationship with open source software, then generates a personalised philosophy statement using their answers. The output is saved to a `.txt` file named after the current user and also printed to the terminal.

**Concepts used:**
- `read -p` for interactive user input
- String concatenation inside double-quoted strings
- `>` to create file and `>>` to append lines
- `date` with custom format string for timestamp
- `cat` to display the saved manifesto
- Alias concept demonstrated via comments

**Run:**
```bash
chmod +x script5_manifesto.sh
./script5_manifesto.sh
```


## Quick Start

```bash
# Clone the repository
git clone https://github.com/[yourusername]/oss-audit-[rollnumber].git
cd oss-audit-[rollnumber]

# Make all scripts executable at once
chmod +x *.sh

# Run each script
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_audit.sh
./script4_log_analyzer.sh /var/log/syslog error
./script5_manifesto.sh
```


## Dependencies

- Bash 4.0 or higher
- Python 3 installed (`sudo apt install python3`)
- `dpkg` for package inspection (pre-installed on Ubuntu)
- Any standard Ubuntu/Debian terminal

## Platform

Tested on Ubuntu 22.04 LTS via WSL2 on Windows 11. Compatible with any Linux distribution running Bash 4.0+.


## License

Submitted as academic coursework for the Open Source Software course at VIT Bhopal. Free to use, modify, and share.