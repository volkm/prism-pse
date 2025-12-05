# Dockerfile for Prism-PSE
######################
# The Docker image can be built by executing:
# docker build -t yourusername/prism-pse .

# Set base image
FROM ubuntu:16.04

# Install dependencies
#############
RUN apt-get update -qq && apt-get install -y --no-install-recommends \
    ca-certificates \
    build-essential \
    git \
    gcc \
    default-jdk

# Build Prism PSE
#############
RUN mkdir /opt/prism-pse
WORKDIR /opt/prism-pse

# Copy the content of the current local repository into the Docker image
COPY . .

# Switch to build directory
WORKDIR /opt/prism-pse/prism

# Build Prism
RUN make -j1

WORKDIR /opt/prism-pse/prism
