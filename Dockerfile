# Use a base image that includes necessary dependencies
FROM ubuntu:20.04

# Set noninteractive mode
ENV DEBIAN_FRONTEND noninteractive

# Install required packages
RUN apt-get update && apt-get install -y postgresql redis-server sentry

# Add your configuration and setup steps here

# Expose ports if needed
EXPOSE 5432 6379 9000

# Start the services
CMD ["service", "postgresql", "start"]
CMD ["service", "redis-server", "start"]
CMD ["service", "sentry", "start"]

