FROM eclipse-temurin:17-jre

WORKDIR /app

# install curl
RUN apt-get update && apt-get install -y curl

# download Lavalink automatically
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar

# copy config
COPY application.yml .

# run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
