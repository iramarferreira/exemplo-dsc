FROM persapiens/openjdk:8u171-jre-alpine

MAINTAINER Iramar Ferreira dos Santos

VOLUME /tmp

EXPOSE 8080

ENV JAVA_OPTS=""

ENV SPRING_BOOT_OPTS=""

RUN adduser -D springboot

USER springboot

ADD --chown=springboot build/libs/*.jar /home/springboot/

ENTRYPOINT exec java $JAVA_OPTS .jar /home/springboot/app.jar $SPRING_BOOT_OPTS

CMD