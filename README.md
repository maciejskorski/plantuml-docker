![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![build](https://img.shields.io/github/actions/workflow/status/maciejskorski/plantuml-docker/docker-image.yaml)
![Docker](https://img.shields.io/badge/dockerhub-images-important.svg?logo=LOGO)
![docker size](https://img.shields.io/docker/image-size/maciejskorski/plantuml-docker)

# Summary

This repo demonstrates a lightweight docker able to run the popular Java diagramming tool [plantuml](http://www.plantuml.com/plantuml/uml/SyfFKj2rKt3CoKnELR1Io4ZDoSa70000).

# How to use

* Build the image or download from DockerHub, then run then container 
* Copy a sample plantuml diagram from the host to the running container, using the command `docker cp`. This should look like `docker cp src/diagram.wsd 3689309baac3:/usr/local` where `3689309baac3` is the container ID.
* Inside the container, run `plantuml diagram.wsd` to generate the output figure `diagram.png`
* Copy the output figure from the container to the host, e.g. `docker cp 3689309baac3:/usr/local/diagram.png .`

# Notes

TBD

