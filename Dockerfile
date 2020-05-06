FROM alpine:3.10

RUN apt-get update && apt-get install -y curl && apt-get clean

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
