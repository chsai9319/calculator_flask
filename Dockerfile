  
#init a base image (Alpine -> Small Linux distro)
FROM python:3.6.7-alpine
#define the present working directory
WORKDIR /calculator_flask
#copy contents into present working dir
COPY .  /calculator_flask
#installing dependencies of Flask
RUN pip install -r requirements.txt

EXPOSE  5000
#define command to start container
CMD ["python","output.py"]