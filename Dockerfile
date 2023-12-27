FROM ubuntu:20.04

# Update package lists
RUN apt-get update

# Install necessary dependencies
RUN apt-get install -y software-properties-common

# Manually add Sentry repository
RUN echo "deb http://ppa.launchpad.net/sentry/sentry/ubuntu focal main" > /etc/apt/sources.list.d/sentry.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4096R/90A6F6E5A19FC22CED8BFAD73EB114CF19617013

# Update package lists again
RUN apt-get update

# Install required packages
RUN apt-get install -y postgresql redis-server sentry

