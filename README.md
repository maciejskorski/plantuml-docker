![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)
![Docker](https://img.shields.io/badge/dockerhub-images-important.svg?logo=LOGO)


# Summary
This template shows how build a docker image :whale: and publish to [DockerHub](https://hub.docker.com/), using GitHub Actions.

# How to use

* Customize the code of `Dockerfile`
* Prepare a docker repository on [DockerHub](https://hub.docker.com/) to host your project
* Customize the build-push action in `.github/workflows/docker-image.yaml`, in particular:
    * use correct DockerHub credentials and add them to your [repository secrets](https://docs.github.com/en/actions/security-guides/encrypted-secrets) as `DOCKER_USER` and `DOCKER_PASSWORD` respectively.
    * make sure that `IMAGE_NAME` matches the repo name on DockerHub 
* The workflow is (by default) run either when the code of the docker file or action script gets changed, or when triggered manually.

# Note

This repo has been created for educational purposes. Building and publishing docker image is here solved with direct Docker commands, but can be also automatized with [dedicated GitHub Actions](https://github.com/docker/build-push-action).