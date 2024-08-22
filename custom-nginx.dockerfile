# Base image
FROM python:3.9

# Maintainer
LABEL version="latest"
LABEL Maintainer="rvrajesh139@gmail.com"

# update the image
RUN apt-get update
RUN apt-get upgrade -y

# add python file to root dir
ADD run.py /

# run python  with our container
CMD ["python3", "./run.py"]
