# cm-dockerfiles
Configuration management to deploy node-backend and react-frontend with docker.

# TL;DR Installation instruction
First of all we have to build all the images of the project.

## Requirements:
- docker
- docker-compose (version 3)

## 1. Build the images

#### Node:
`
$ docker build --rm --no-cache -t node-back -f dockerfile-node . 
`
#### React:
`
$ docker build --rm --no-cache -t react-front -f dockerfile-react . 
`
