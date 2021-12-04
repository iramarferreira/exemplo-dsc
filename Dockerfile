FROM openjdk:8-alpine
# adicionando usuário para poder executar

RUN mkdir /app
COPY ./build/libs/*.jar /app
WORKDIR /app
# Copiando os arquivos
#COPY . .
# Gerar o build
#RUN ./gradlew build

# Não funciona do heroku
# EXPOSE $PORT

#WORKDIR /build/libs
#ENTRYPOINT ["ls"]
#RUN "ls"
#CMD ["ls"]

# set up non-root user (recommended for Heroku)
RUN adduser -D myuser
USER myuser

CMD ["java","-Dspring.profiles.active=production","-jar", "Exemplo-0.0.1-SNAPSHOT.jar" ]
#ENTRYPOINT ["java", "-Dspring.profiles.active=dev"]

#ENTRYPOINT ["java", "-Dspring.profiles.active=dev", "-jar","Exemplo-0.0.1-SNAPSHOT.jar" ]
#CMD java $JAVA_OPTS -Dserver.port=$PORT -Dspring.profiles.active=production -jar Exemplo-0.0.1-SNAPSHOT.jar
#CMD ["java","$JAVA_OPTS", "-Dserver.port=$PORT","-Dspring.profiles.active=production","-jar", "Exemplo-0.0.1-SNAPSHOT.jar" ]