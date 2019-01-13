FROM ubuntu:18.04
MAINTAINER Waldi Irawan <waldiirawan127@gmai.com>

RUN apt-get update && apt-get install -y coturn

ENV TURN_PORT 3478
ENV TURN_PORT_START 10000
ENV TURN_PORT_END 20000
ENV TURN_SECRET mysecret
ENV TURN_SERVER_NAME coturn

COPY start_turnserver.sh /start_turnserver.sh
RUN chmod +x start_turnserver.sh

CMD ["./start_turnserver.sh"]
