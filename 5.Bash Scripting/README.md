
Shell & Bash Scripting in Linux

A beginner-friendly guide to understanding Shell and Bash scripting in Linux.
Perfect for Linux administrators, DevOps engineers, and students.

📌 What Is a Shell?

A Shell is a Command-Line Interface (CLI) that allows users to interact with the Linux operating system.

It acts as a bridge between:

👤 User Commands

🧠 Linux Kernel

When you type a command:

The shell interprets the command

Passes it to the kernel

Displays the output

🖥️ Common Shells in Linux
Shell	Description
Bash (Bourne Again Shell)	Default shell in most Linux distributions
Zsh	Advanced shell with better customization
Fish	User-friendly interactive shell
Ksh	Korn Shell (older Unix shell)
Tcsh	Enhanced version of C shell

Check your current shell:

``` bash
echo $SHELL
```


🐧 What Is Bash?

Bash (Bourne Again Shell) is:

The default shell in most Linux systems

A command interpreter

A powerful scripting language

Bash supports:

Variables

Conditional statements

Loops

Functions

File handling

Process management

📜 What Is a Bash Script?

A Bash script is a text file containing multiple Bash commands.

Instead of running commands one by one, you:

Write them in a file

Execute the file

Automate tasks

🧾 Structure of a Bash Script
1️⃣ Shebang Line

```bash
#!/bin/bash

```

The shebang (#!) tells the system which interpreter to use.

2️⃣ Example Script

```bash
#!/bin/bash
echo "Hello, buddy!"
date
```
ls -l /home/ubuntu

🔍 Explanation

echo → Prints text

date → Shows current date and time

ls -l → Lists files in long format

Commands run sequentially (top to bottom)

🚀 How to Create and Run a Bash Script

Step 1: Create Script File
```bash
vim  myscript.sh
```

Add script content and save.

Step 2: Give Execute Permission
```bash
chmod +x myscript.sh
chmod 754 myscript.sh
```

Step 3: Run the Script
```bash
./myscript.sh
```
OR
```bash
bash myscript.sh
```

🎯 Why Use Bash Scripts?

🔁 1. Automation

Backups

Monitoring

Deployments

Log cleanup

⚡ 2. Efficiency

Execute multiple commands at once

Save time

Reduce manual errors

🛠️ 3. System Administration

User management

Process management

Service control

Package installation

🎨 4. Customization

Create shortcuts

Build custom tools

Automate DevOps workflows

🧠 Real-World DevOps Use Cases

Bash scripting is widely used in:

Pre-deployment validation

Health-check scripts

Cron job automation

Server provisioning

CI/CD pipelines

Log rotation
