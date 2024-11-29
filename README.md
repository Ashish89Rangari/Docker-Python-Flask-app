# Docker-Python-Flask-app
Docker-Python-Flask-app using flask and pip python manager

# Requirements and Point to noted 

We don't need any build tool for python applications.
We can run python application code directley like below

	ex: python app.py
If we need any libraries for python (Ex: Flask) application development then we will mention them in "requirements.txt" file
Note: We will use "python pip" s/w to download libraries configured in requirements.txt file.

# Docker-Python-flask-app
  

Build the image using the following command

```bash
$ docker build -t  docker-python-flask-app .
```
Run the Docker container using the command shown below.

```bash
$ docker run -d -p 5000:5000 docker-python-flask-app  
```
To list Docker images and container using the command shown below.

```bash
$ docker images 
$ docker ps 
```
To Push docker image in Dockerhub first tag it , if tagged push directly to Dockerhub.

```bash
$ docker tag python-flask-app:latest ashishr99/docker-python-flask-app:latest
$ docker push ashishr99/docker-python-flask-app:latest 
```

# For windows
The application will be accessible at http://localhost:5000

# For Linux
The application will be accessible at http://public-ip:5000
