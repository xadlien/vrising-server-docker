FROM steamcmd/steamcmd:latest
COPY steaminput /tmp/steaminput
RUN steamcmd +runscript /tmp/steaminput

FROM ubuntu:latest
RUN apt update && apt install -y wine64 xvfb
RUN dpkg --add-architecture i386 && apt update && apt install -y wine32
RUN apt install -y --reinstall winbind
COPY --from=0 /data /vrising
COPY start_server_docker.sh /vrising/start_server_docker.sh
WORKDIR /vrising
CMD bash /vrising/start_server_docker.sh
