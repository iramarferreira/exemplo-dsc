FROM openjdk:8-alpine
# adicionando usuário para poder executar

#COPY ./build/libs/*.jar /
# Copiando os arquivos
COPY . .
RUN ./gradlew build


WORKDIR /build/libs
ENTRYPOINT ["ls"]
RUN "ls"
CMD ["ls"]
#ENTRYPOINT ["java", "-jar","Exemplo-0.0.1-SNAPSHOT.jar" ]
CMD ["java", "-jar","app.jar" ]