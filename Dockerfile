FROM public.ecr.aws/ubuntu/ubuntu:20.04

# Update package lists
RUN apt-get update

# Install necessary dependencies
RUN apt-get install -y software-properties-common gnupg

# Manually add Sentry repository with GPG key
RUN echo "deb [arch=amd64] https://ppa.launchpadcontent.net/vshn/sentry-stable/ubuntu trusty main" > /etc/apt/sources.list.d/sentry.list \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 90A6F6E5A19FC22CED8BFAD73EB114CF19617013

# Update package lists again
RUN apt-get update

# Install required packages
RUN apt-get install -y postgresql redis-server sentry

