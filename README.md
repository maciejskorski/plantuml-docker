![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![Docker](https://img.shields.io/badge/dockerhub-images-important.svg?logo=LOGO)


# Summary

This repo demonstrates a light docker able to run the popular Java diagramming tool [plantuml](http://www.plantuml.com/plantuml/uml/SyfFKj2rKt3CoKnELR1Io4ZDoSa70000).

# How to use

* Build the image or download from DockerHub
* Run the image, and pay attention to the container id
* Copy a sample plantuml diagram from the host to the running container, using the command `docker cp`. This shold look like `docker cp src/diagram.wsd 3689309baac3:/usr/local` where `3689309baac3` is the container ID.
* Inside the container, run `plantuml diagram.wsd` to generate `diagram.png`
* Copy the figure from the container to the host, e.g. `docker 3689309baac3:/usr/local/diagram.png .`

# Note

