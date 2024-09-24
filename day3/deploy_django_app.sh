#!/bin/bash

<<task
Deploy a Django app and handle the code for errors
task

code_clone(){

echo "cloning the Django app"
git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirments(){

echo "installing Dependencies" 
sudo apt-get install docker.io nginx -y
}

required_restarts(){
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enabled nginx
	systemctl restart docker
}

deploy(){

docker build -t notes-app .
docker run -d -p 8000:8000 notes-app:latest
}

echo "****deployment started"

if ! code_clone; then
	echo "directory already exists"
	cd deploy_django_app.sh
fi
	
if ! install_requirments; then
	echo "installation failed"
	exit 1
fi

if !required_restarts; then
	echo "system fault identified"
	exit 1

fi
	deploy

echo "****deployment done"
