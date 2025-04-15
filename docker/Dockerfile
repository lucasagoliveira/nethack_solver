# Dockerfile
FROM ubuntu:22.04

# Install all needed packages, software and dependencies
RUN apt-get update
RUN apt-get install -y python3-pip 
RUN yes | apt-get install software-properties-common
RUN apt-add-repository ppa:swi-prolog/stable
RUN apt-get update
RUN yes | apt-get install swi-prolog
RUN python3 -m pip install --user virtualenv
RUN yes | apt-get install python3-venv
RUN python3 -m venv home/env
RUN . home/env/bin/activate && pip install setuptools --upgrade && pip install gym && pip install nle && pip install janus_swi

# Copy program into the container
COPY . /home

# Set working directory
WORKDIR /home

# Default command to run
ENTRYPOINT ["bash", "-c", ". /home/env/bin/activate && swipl main.pl"]