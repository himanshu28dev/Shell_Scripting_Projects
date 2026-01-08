# AWS EC2 Instance Automation Script (Shell + AWS CLI)

## 📌 Overview
This project contains a Shell script that automates the creation of an Amazon EC2 instance using the AWS CLI.  
The script performs validation, installs AWS CLI if not already available, launches the EC2 instance, and waits until the instance is in the `running` state.

Suitable for DevOps, AWS Support Engineer, SRE, and Cloud automation roles.

---

## 🛠 Tech Stack
- Shell Scripting (Bash)
- AWS CLI v2
- EC2
- Linux (Ubuntu)
- curl / unzip (for CLI installation)

---

## 🎯 Features
✔ Validates AWS CLI installation  
✔ Installs AWS CLI v2 automatically if missing  
✔ Launches EC2 instance using configurable parameters  
✔ Tags EC2 instance for better identification  
✔ Implements wait logic until the instance state becomes `running`  
✔ Uses strict Bash error handling (`set -euo pipefail`)  
✔ Modular function-based design  

---

## 🚀 Workflow Breakdown

1. **Check for AWS CLI**
   - If missing, download and install AWS CLI v2

2. **Define Instance Parameters**
   - AMI ID
   - Instance Type
   - Key Pair
   - Subnet ID
   - Security Group IDs
   - Instance Name (for tagging)

3. **Launch EC2 Instance**
   Using:



4. **Wait for Running State**
Script polls EC2 instance status until it's ready

---

## ⚙️ Configuration Required

Before running, fill the following values in the script:

AMI_ID="ami-xxxxx"
INSTANCE_TYPE="t2.micro"
KEY_NAME="your-key"
SUBNET_ID="subnet-xxxx"
SECURITY_GROUP_IDS="sg-xxx sg-yyy"
INSTANCE_NAME="my-ec2-instance"


You must also have:
✔ AWS credentials configured (`aws configure`)  
✔ Valid IAM permissions for EC2 operations  

---

## 🧩 How to Run

```bash
chmod +x create-ec2.sh
./create-ec2.sh
