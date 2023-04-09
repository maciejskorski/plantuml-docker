# build a light Java Runtime Environment tailored to run plantuml
FROM eclipse-temurin:11 as java_docker
WORKDIR /usr/local/bin
COPY src/plantuml .
RUN chmod +x plantuml
RUN apt-get update \
    && apt-get install -y wget graphviz \
    && wget http://sourceforge.net/projects/plantuml/files/plantuml-nodot.1.2023.5.jar/download -O plantuml.jar

RUN $JAVA_HOME/bin/jlink \
         --add-modules java.base,java.datatransfer,java.desktop,java.logging,java.prefs,java.scripting,java.xml  \
         --strip-debug \
         --no-man-pages \
         --no-header-files \
         --compress=2 \
         --output ./jre

ENV PATH=$PATH:/usr/local/bin:/usr/local/bin/jre/bin

CMD ["/bin/sh"]