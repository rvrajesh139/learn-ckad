# Base image
FROM python:latest

# Label
LABEL version="1.0"
LABEL Maintainer="rvrajesh139"

# update the image
RUN apt-get update
RUN apt-get upgrade -y

#add python code
ADD test.py /

# start nginx with our container
CMD ["python3", "./test.py"]
