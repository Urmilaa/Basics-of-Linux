**Linux File Viewing Commands – DevOps Guide**

A practical guide to understanding and using cat, head, and tail commands in Linux for log monitoring and troubleshooting.

**These commands are essential for:**

📂 Viewing file contents

📜 Checking configuration files

🔍 Investigating logs

📡 Monitoring real-time application logs

🛠 Production troubleshooting

**1.cat – Display & Combine Files**

Purpose

Display file content

Create files

Combine multiple files

🔹 Basic Syntax
cat filename
🔹 **Important Options**
1️⃣** -n → Show Line Numbers**
cat -n app.log

Displays file content with line numbers.

2️⃣ **-b → Number Non-Empty Lines**
cat -b app.log

Numbers only non-blank lines.

3️⃣ **-s → Remove Repeated Blank Lines**
cat -s app.log

Useful for cleaning logs.

4️⃣ **Create a File Using cat**
cat > test.txt

Type content → Press Ctrl + D to save.

5️⃣** Combine Files**
cat file1.txt file2.txt > combined.txt
🎯 **DevOps Use Case**

Quickly view configuration files:

cat /etc/nginx/nginx.conf

📘** 2️⃣ head Command (View Beginning of File)**
**✅ Purpose**

Displays the first part of a file.

**🔹 Default Behavior**
head app.logLinux File Viewing Commands – DevOps Guide


📘** 2️⃣ head Command (View Beginning of File)**
✅ Purpose

Displays the first part of a file.

🔹** Default Behavior**
head app.log

Shows first 10 lines by default.

🔹 **Important Options**
1️⃣** -n → Specify Number of Lines**
head -n 20 app.log

Shows first 20 lines.

**2️⃣ -c → Number of Bytes**
head -c 100 app.log

Shows first 100 bytes.

****🎯 DevOps Use Case
****
Check whether application started correctly:

head -n 50 app.log

Useful for startup logs.

**📘 3️⃣ tail Command (View End of File)**
✅ Purpose

Displays the last part of a file.

🔹 Default Behavior
tail app.log

Shows last 10 lines by default.

**🔹 Important Options**
**1️⃣ -n → Specify Number of Lines**
tail -n 20 app.log

Shows last 20 lines.

**2️⃣ -f → Follow File in Real-Time (Very Important)**
tail -f app.log

Displays new lines as they are written.

Press Ctrl + C to stop.

**-F → Follow Even After Log Rotation**
tail -F app.log

Better for production servers.

**🚀 Real DevOps Production Scenario**

Application crash debugging:

Step 1 – Check startup
head -n 30 app.log
Step 2 – Check latest errors
tail -n 50 app.log
Step 3 – Monitor live logs
tail -f app.log

📊 Comparison Table

| Command | Purpose             | Default Lines | Real-Time Support |
| ------- | ------------------- | ------------- | ----------------- |
| `cat`   | Display entire file | All           | ❌                 |
| `head`  | Show beginning      | 10            | ❌                 |
| `tail`  | Show end            | 10            | ✅ (`-f`)          |


Shows first 10 lines by default.

🔹 Important Options
1️⃣ -n → Specify Number of Lines
head -n 20 app.log

Shows first 20 lines.

2️⃣ -c → Number of Bytes
head -c 100 app.log

Shows first 100 bytes.

🎯 DevOps Use Case

Check whether application started correctly:

head -n 50 app.log

Useful for startup logs.

📘 3️⃣ tail Command (View End of File)
✅ Purpose

Displays the last part of a file.

🔹 Default Behavior
tail app.log

Shows last 10 lines by default.

🔹 Important Options
1️⃣ -n → Specify Number of Lines
tail -n 20 app.log

Shows last 20 lines.

2️⃣ -f → Follow File in Real-Time (Very Important)
tail -f app.log

Displays new lines as they are written.

Press Ctrl + C to stop.

-F → Follow Even After Log Rotation
tail -F app.log

Better for production servers.

**🚀 Real DevOps Production Scenario**

Application crash debugging:

Step 1 – Check startup
head -n 30 app.log
Step 2 – Check latest errors
tail -n 50 app.log
Step 3 – Monitor live logs
tail -f app.log

📊 Comparison Table

| Command | Purpose             | Default Lines | Real-Time Support |
| ------- | ------------------- | ------------- | ----------------- |
| `cat`   | Display entire file | All           | ❌                 |
| `head`  | Show beginning      | 10            | ❌                 |
| `tail`  | Show end            | 10            | ✅ (`-f`)          |
