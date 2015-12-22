FROM mongo:2.6.5

## esn-mongo dockerfile
MAINTAINER Bastien Mennesson <bmennesson@linagora.com>

EXPOSE 27017

COPY start.sh /usr/local/bin

CMD ["sh", "/usr/local/bin/start.sh"]
