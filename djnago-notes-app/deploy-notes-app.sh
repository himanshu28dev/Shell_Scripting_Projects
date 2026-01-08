#!/bin/bash
#
#

<< task
Deploy a Django app
And Handle the code for erros
task

code_clone() {
        echo "Cloning the Django notebook application..."
        git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirements() {
        echo "Installing the requirements......"
        sudo apt install docker.io nginx -y
}

required_restart() {
        sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
        sudo systemctl restart docker
}

deploy() {
        docker build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest
}

echo "***********Deployment Started************"

if ! code_clone; then
        echo "Clone directory already exists"
        cd django-notes-app
fi

if ! install_requirements; then
        echo "Installation failed"
        exit 1
fi

if ! required_restart; then
        echo "system requirement failed"
        exit 1
fi

if ! deploy; then
        echo "Deployment failed.....mailing the admin"
        #email
        exit 1

echo "************Deployment Ended*************"
