FROM eclipse-temurin:20-jre
WORKDIR /usr/local/bin
COPY ./src/plantuml .

RUN apt-get update \
    && apt-get install -y graphviz
