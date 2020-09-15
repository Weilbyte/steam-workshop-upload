FROM cm2network/steamcmd:root as steam-workshop-upload
RUN apt-get -y update && apt-get install -y wget --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*


ENV STEAM_USERNAME=
ENV STEAM_PASSWORD=
ENV STEAM_TFASEED=

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh && wget https://github.com/Weilbyte/steamcmd-2fa/releases/latest/download/steamcmd-2fa -O /home/steam/steamcmd-2fa && chmod +x /home/steam/steamcmd-2fa

CMD ["."]
ENTRYPOINT ["/entrypoint.sh"]