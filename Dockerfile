FROM openjdk:8-alpine
# adicionando usuário para poder executar
COPY ./build/libs/*.jar /usr/src/myapp/
WORKDIR /usr/src/myapp
ENTRYPOINT ["ls"]
# ENTRYPOINT ["java", "-jar","*.jar" ]
CMD "java -jar *.jar"