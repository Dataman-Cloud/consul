FROM demoregistry.dataman-inc.com/library/centos7-base:latest 
MAINTAINER pro zpang@dataman-inc.com

ENV CONSUL_VERSION=0.6.4 
ENV CONSUL_PKG_NAME=consul_$CONSUL_VERSION_linux_amd64.zip
ENV CONSUL_WEB_PKG_NAME=consul_$CONSUL_VERSION_web_ui.zip

RUN wget https://releases.hashicorp.com/consul/$CONSUL_VERSION/$CONSUL_PKG_NAME && \
	 unzip -o $CONSUL_PKG_NAME -d / && \
    wget https://releases.hashicorp.com/consul/$CONSUL_VERSION/$CONSUL_WEB_PKG_NAME.zip && \
	 unzip -o $CONSUL_WEB_PKG_NAME -d /web_ui

ENTRYPOINT ["/consul"]
