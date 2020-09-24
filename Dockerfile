FROM openjdk:8-jdk-alpine 

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=target/cicd-pipeline-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} springboot.jar

RUN echo Docker image creation started, please hold on for a moment.........

ENTRYPOINT [java, -jar, springboot.jar]

MAINTAINER "anamika@gmail.com"