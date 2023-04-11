FROM eclipse-temurin:20-jre
WORKDIR /usr/local/bin
COPY ./src/plantuml .
RUN chmod +x plantuml
RUN && wget http://sourceforge.net/projects/plantuml/files/plantuml-nodot.1.2023.5.jar/download -O plantuml.jar

RUN apt-get update \
    && apt-get install -y graphviz
