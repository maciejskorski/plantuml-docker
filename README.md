![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![build](https://github.com/maciejskorski/plantuml-docker/actions/workflows/docker-image.yaml/badge.svg)
![tests](https://github.com/maciejskorski/plantuml-docker/actions/workflows/docker-test.yaml/badge.svg)
![Docker](https://img.shields.io/badge/dockerhub-images-important.svg?logo=LOGO)
![docker size](https://img.shields.io/docker/image-size/maciejskorski/plantuml-docker?sort=date)

# Summary

This repo demonstrates a lightweight docker able to run the popular Java diagramming tool [plantuml](http://www.plantuml.com/plantuml/uml/SyfFKj2rKt3CoKnELR1Io4ZDoSa70000).

# How to use

* Build the image locally or pull it from DockerHub, then run then container 
* Copy the input plantuml diagram from the host to the running container, using the command `docker cp`. This should look like `docker cp src/diagram.iuml 3689309baac3:/usr/local` where `3689309baac3` is the container ID.
* Inside the container, run `plantuml diagram.iuml` to generate the output figure `diagram.png`
* Copy the output figure from the container to the host, e.g. `docker cp 3689309baac3:/usr/local/diagram.png .`

# Architecture

The docker builds on top of a tiny [Alpine Linux Image](https://hub.docker.com/_/alpine) and provides a minimalistic Java Runtime Environment tailored to running the plantuml tool.

![Plantuml Docker Architecture](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/maciejskorski/plantuml-docker/main/src/diagram.iuml)
