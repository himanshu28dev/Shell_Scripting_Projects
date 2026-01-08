# Deploy Notes App — Shell Scripting + Docker Automation

## 📌 Overview
This project automates the deployment of a Django-based Notes application using a custom Shell script.  
The script handles code retrieval, dependency installation, Docker image build, and container launch — reducing manual deployment effort.

Suitable for DevOps, SRE, AWS Support, and Middleware Automation roles.

---

## 🛠 Tech Stack
- Shell Scripting (Bash)
- Docker
- Linux (Ubuntu)
- Git
- Nginx (Optional)

---

## 🎯 Features
✔ Automates code cloning from GitHub  
✔ Handles dependency installation  
✔ Builds Docker image  
✔ Runs application container  
✔ Includes basic error handling  
✔ Modular design with functions  
✔ Extensible for CI/CD  

---

## 🚀 Deployment Workflow
1. Clone application
2. Install required packages
3. Restart required services
4. Build Docker image
5. Run container
6. Verify deployment

---

## 🧩 How to Run
```bash
chmod +x deploy.sh
./deploy.sh
