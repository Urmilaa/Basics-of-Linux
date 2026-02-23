**Linux Compression & Log Analysis Commands**

This repository explains commonly used Linux compression and compressed-file handling commands:
gzip
gunzip
zcat
zgrep
zless
These commands are widely used in Linux Administration, DevOps, and Production Log Troubleshooting.

1️⃣ **gzip – Compress Files**
gzip is used to compress files in Linux.It reduces file size and replaces the original file with a .gz file.
🔹 Syntax
gzip filename
🔹 Example
gzip data.txt
The original data.txt file is removed by default.

🔹 **Keep Original File**
gzip -k data.txt
-k → keeps original file

🔹 **Check Compression Details**
gzip -l data.txt.gz

2️⃣ **gunzip – Decompress Files**
gunzip is used to decompress .gz files.
🔹 Syntax
gunzip filename.gz
🔹 Example
gunzip data.txt.gz
The .gz file is removed by default.

🔹 **Decompress Without Deleting .gz**
gunzip -c data.txt.gz 
-c → output to terminal (stdout)

 3️⃣ **zcat – View Compressed File**
zcat displays the content of a compressed .gz file without extracting it.
🔹 Syntax
zcat filename.gz
🔹 Example
zcat data.txt.gz

**🔹 DevOps Use Case**
Search inside compressed log:
zcat app.log.1.gz | grep "ERROR"

4️⃣ **zgrep – Search Inside .gz Files**
zgrep works like grep but directly on .gz files.
🔹 Syntax
zgrep "pattern" filename.gz
🔹 Example
zgrep "Exception" app.log.1.gz

**1. -i → Case Insensitive Search**
zgrep -i "exception" app.log.1.gz
**2. -v → Invert Match (Exclude Pattern)**
zgrep -v "DEBUG" app.log.1.gz
Shows everything except DEBUG logs.
**-r → Recursive Search**
Search inside directories and subdirectories.
zgrep -ri "exception" /var/log/
Options explained:
-r → recursive
-i → case insensitive

🔹 **Search in Multiple Files**
zgrep "ERROR" *.gz

5️⃣ ** zless – View Large Compressed Files**
zless allows you to view compressed files page by page.
🔹 Syntax
zless filename.gz
🔹 Example
zless app.log.1.gz

**Useful Keys:**
/pattern → Search inside file
q → Quit
Space → Next page

📊 **Command Comparison Table**
| Command  | Purpose              | Deletes Original? | Common Use           |
| -------- | -------------------- | ----------------- | -------------------- |
| `gzip`   | Compress file        | ✅ Yes             | Save disk space      |
| `gunzip` | Decompress file      | ✅ Yes             | Restore file         |
| `zcat`   | View compressed file | ❌ No              | Quick log viewing    |
| `zgrep`  | Search inside `.gz`  | ❌ No              | Troubleshooting logs |
| `zless`  | Page-wise view       | ❌ No              | Large log analysis   |



