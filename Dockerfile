FROM ubuntu:latest

# Set environment variables to avoid some interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic packages
RUN apt-get update && apt-get install -y \
    apt-utils \
    curl \
    wget \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# copy the hack script into the container
COPY my_hack.sh /usr/local/bin/my_hack.sh
RUN chmod +x /usr/local/bin/my_hack.sh

# Set default command
CMD ["/bin/bash"]
