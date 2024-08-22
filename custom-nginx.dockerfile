# Base image
FROM ubuntu:latest

# Maintainer
LABEL version="latest"
LABEL Maintainer = "rvrajesh139@gmail.com"

# update the image
RUN apt-get update
RUN apt-get upgrade -y

#install nginx
RUN apt-ge install nginx -y

# expose port 
EXPOSE 80

# start nginx with our container

CMD["nginx", "-g", "deamon off;"]