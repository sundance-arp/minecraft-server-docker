FROM openjdk:13-jdk-alpine

WORKDIR /minecraft-server

RUN wget https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar && \
    echo "eula=true" > eula.txt

COPY server.properties /minecraft-server

CMD java -Xmx1024M -Xms1024M -jar server.jar nogui

