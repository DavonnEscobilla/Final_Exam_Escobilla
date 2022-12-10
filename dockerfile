FROM ubuntu
MAINTAINER qdescobilla <qdpescobilla@tip.edu.ph>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update packages
RUN apt update; apt dist-upgrade -y

# install packages
RUN apt install -y apache2 

# Set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
