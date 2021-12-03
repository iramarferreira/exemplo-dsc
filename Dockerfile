FROM openjdk:8-alpine
# adicionando usuário para poder executar
COPY ./build/libs/*.jar /
#WORKDIR /usr/src/myapp
#ENTRYPOINT ["ls"]
CMD ["ls"]
# ENTRYPOINT ["java", "-jar","*.jar" ]
CMD ["java", "-jar","*.jar" ]