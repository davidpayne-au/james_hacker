# nginx-api

A simple means of setting up a web api using nginx as a reverse proxy.

## Prerequisites

- A knowledge of Docker (you do not need to be an expert), but you should be able to understand and run the commands below.
    - `docker images` - to list all images.
    - `docker run` - to run a container based on an image
    - `docker ps` - to list all running containers.
    - `docker ps -a` - to list all containers (including those that are stopped)
    - `docker stop` - to stop a running container.
    - `docker rm` - to remove a container.
    - `docker rmi` - to remove an image.
    - `docker build -t my-nginx-mock .` - be able to undertstand this command
    - `docker run -p 8080:80 nginx` - be able to understand this command
    - Basic understanding of how to edit a Dockerfile so you can customize the image. [Dockerfile reference](https://docs.docker.com/reference/dockerfile/#usage)
- A basic understanding of how to use Git.
- A basic understanding of how to use a terminal or command prompt.
- A basic understanding of how to use a text editor (use VSCode)
- A basic understanding of how to use a browser.

## Getting Started

1. Install Docker using Rancher Desktop - a free version of Docker. [Rancher Desktop](https://rancherdesktop.io/)
2. Run the following command to create/build the docker image `docker build -t my-nginx-mock .` or use the run.sh script.
3. Run the following command to start the container `docker run -p 8080:80 my-nginx-mock` or use the run.sh script.
4. Open a browser and navigate to `http://localhost:8080/api/v1/health` to see the response.
5. Run the tests using the test.sh script.
6. Make your own tests and modify the nginx.conf file to suit your needs for generating mock responses you can test against.

### The http file

There is also a http file in this directory. This is a new file format supported in Visual Studio. It has been in Visual Studio Code for a while now. You can use this file to make requests to the server and see the responses. You can also use this file to test the server.

If using VSCode, you will need to install the REST Client extension. This will allow you to run the http file and see the responses.
[Rest Client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client)


[More about Http files](https://learn.microsoft.com/en-us/aspnet/core/test/http-files?view=aspnetcore-8.0)
