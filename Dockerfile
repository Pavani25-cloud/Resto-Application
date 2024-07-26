# Define the Parent Image 
FROM ubuntu:latest 
# Set Up the workDir 
WORKDIR /app 
# Install the Ubuntu Server
RUN apt-get update -y 
RUN apt-get install apache2 -y
# Copy the Files into the Docker Image 
COPY . /var/www/html 
# Port Number 
EXPOSE 8081 
# Start the Apache Server 
ENTRYPOINT apachectl -D FOREGROUND 
