#
# docker build -t linagora/esn-mongo .
#
# Docker container with configured MongoDB for OpenPaaS ESN
#

FROM mongo:2.6.5

MAINTAINER Linagora Folks

EXPOSE 27017

COPY start.sh /usr/local/bin/start.sh

CMD ["sh", "/usr/local/bin/start.sh"]
