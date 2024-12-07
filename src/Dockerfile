# Use Ubuntu 22.04 as the base image
FROM ubuntu:22.04

# Set environment variables to suppress interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary tools and dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gcc \
    g++ \
    libgcc-11-dev \
    tar \
    && apt-get clean

# Set the working directory inside the container
WORKDIR /carbon-lang

# Copy the local files to the container
COPY . .

# Make the script executable
RUN chmod +x script.sh

# Default command to run the script
CMD ["./script.sh"]