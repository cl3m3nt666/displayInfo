#
# Python Dockerfile
#
#
# Pull base image.
FROM ubuntu

# Install Python.
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \
  rm -rf /var/lib/apt/lists/*

# install python libraries
RUN pip install Flask

# update source code
RUN rm -rf /var/www
COPY www /var/www
RUN ls /var/www

# post code commands
WORKDIR /var/www

EXPOSE 5000
ENTRYPOINT ["python", "/var/www/app.py"]
