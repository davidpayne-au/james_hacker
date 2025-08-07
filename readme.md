# james_hacker
This is a simple repo to simulate setting up a docker container for a hacker named James.
It includes a Dockerfile and a build script to create the container.

Happy pen-testing lessons!

# Dockerfile
The Dockerfile sets up a basic environment with essential tools for hacking. It installs necessary packages and
configures the container to run a simple script.
# build.sh
The build script automates the process of building the Docker image. It can be run to create the container with all the necessary tools installed.
# my_hack.sh
This script is a placeholder for any hacking-related commands or scripts that James might want to run inside the Docker container. It can be customized as needed.


# How to connect to the container so you can run commands

`docker exec -it james_hacker_container /bin/bash`
