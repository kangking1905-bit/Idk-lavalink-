FROM openjdk:17

WORKDIR /app

COPY Lavalink.jar .
COPY application.yml .

CMD ["java", "-jar", "Lavalink.jar"]
