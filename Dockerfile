FROM ubuntu:bionic
LABEL maintainer="Konstantin Sergeev fonora@mail.ru"

RUN apt-get update && apt-get install -y erlang

COPY entrypoint.sh /
# VOLUME /ebin

ENTRYPOINT ["/entrypoint.sh"]
