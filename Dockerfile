# This is a sample Dockerfile

# set base image python:3.8-slim-buster
FROM python:3.8-slim-buster

# set working directory as app
WORKDIR /app

# copy requirements.txt file from local (source) to file structure of container (destination) 
COPY requirements.txt requirements.txt
COPY ./src/ /app/

# Install the requirements specified in file using RUN
RUN pip3 install -r requirements.txt
RUN apt-get update -y
RUN apt-get install tk -y

# copy all items in current local directory (source) to current container directory (destination)
COPY . .

# command to run when image is executed inside a container
# CMD [ "python3", "main.py" ]
CMD ["/app/main.py"]
ENTRYPOINT ["python3"]