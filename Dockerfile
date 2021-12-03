FROM openjdk:8-alpine
# adicionando usuário para poder executar
#COPY ./build/libs/*.jar /
COPY . .
#WORKDIR /usr/src/myapp
#ENTRYPOINT ["ls"]
RUN ls
CMD ls
# ENTRYPOINT ["java", "-jar","*.jar" ]
CMD ["java", "-jar","app.jar" ]