FROM openjdk:8-alpine
# adicionando usuário para poder executar
COPY ./build/libs/*.jar /app.jar
#WORKDIR /usr/src/myapp
#ENTRYPOINT ["ls"]
ENTRYPOINT ["ls"]
# ENTRYPOINT ["java", "-jar","*.jar" ]
CMD ["java", "-jar","app.jar" ]