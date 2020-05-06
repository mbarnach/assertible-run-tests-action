FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl && apt-get clean

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
