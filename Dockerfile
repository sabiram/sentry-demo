FROM ubuntu:20.04

# Update package lists
RUN apt-get update

# Install necessary dependencies
RUN apt-get install -y software-properties-common

# Add Sentry repository
RUN add-apt-repository -y ppa:sentry/sentry

# Update package lists again
RUN apt-get update

# Install required packages
RUN apt-get install -y postgresql redis-server sentry

