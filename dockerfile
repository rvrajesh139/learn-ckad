# Base image
FROM ubuntu:latest

# Label
LABEL version="1.0"
LABEL Maintainer="rvrajesh139"

# update the image
RUN apt-get update
RUN apt-get upgrade -y

# install python3
RUN apt-get install python3 -y

#copy
COPY . /usr/src/app

# expose port 
EXPOSE 80

# start nginx with our container

CMD ["python3", "test.py"]
