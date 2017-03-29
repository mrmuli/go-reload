# go-reload
This is a tutorial that covers the following:  
1. How to write a simple Go server with routing.
2. Writing a Dockerfile for Go applications.
3. How to run multiple docker-containers with docker-compose
4. Hot reloading Go applications during development
5. How to override a docker-compose setup

## Prerequisites:
To set up the application, ensure you have the following:
1. Ensure you have Go installed and GOPATH set
2. Docker and docker compose, get that [here](https://docs.docker.com/compose/install/) 
3. Ensure you have Glide installed, get it [here](https://github.com/Masterminds/glide)
4. Ensure you have fresh installed, get it [here](https://github.com/pilu/fresh)

**NOTE** ensure your docker-compose is of version 1.6.0+ and Docker Engine is of version 1.12.0+
## Cloning the repository
RUN  
`` go get github.com/andela-jmuli/go-reload ``  
to clone the repository


RUN  
`` glide install ``  
this will install dependencies

RUN  
`` fresh -c runner.conf main.go ``  
this will run the server

## Docker Compose setup

RUN  
`` docker-compose up --build ``  
this will build the docker images and run the containers

Go to your browser and open `127.0.0.1:4000`.  
Observe your terminal when saving changes as hot reloading takes effect.