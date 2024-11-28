# For python we will use base image python

FROM python:3.6

# Who is the Author (depricated) instead of LABEL

#MAINTAINER "ASHISH"

LABEL Author="ASHISH"

# Copy the code from current directory (used dot .)
# usr/app is container directory
# code will be copied to host machine to conatiner machine


COPY . /usr/app

# To change the working directory to conatiner directory to perform command


WORKDIR /usr/app

# To expose conatainer port (# Expose the port the app runs on)

EXPOSE 5000

# To install flask python pip should install
# -r for recursive
# In requirements txt we have dependancy called flask

RUN pip install -r requirements.txt

# Entrypoint is nothing but act as CMD but in CMD can be overwrite and Entrypoint can't be 
# executing jar file inside the container, so executing command jar file name
# Command to run application in "python app.py"

ENTRYPOINT [ "python" , "app.py"]