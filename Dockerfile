FROM openjdk:8-alpine
# adicionando usuário para poder executar
COPY ./build/libs/*.jar /usr/src/myapp/app.jar
WORKDIR /usr/src/myapp
ENTRYPOINT ["ls"]
ENTRYPOINT ["java", "-jar","app.jar" ]