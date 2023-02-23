FROM cm2network/steamcmd:root as steam-workshop-upload
RUN apt-get -y update 
RUN apt-get install -y wget --no-install-recommends
RUN apt-get install -y nodejs --no-install-recommends
RUN apt-get install -y npm --no-install-recommends
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/*

ENV STEAM_USERNAME=
ENV STEAM_PASSWORD=
ENV STEAM_TFASEED=

COPY . /app
RUN chmod +x /app/entrypoint.sh

CMD ["."]
ENTRYPOINT ["/app/entrypoint.sh"]