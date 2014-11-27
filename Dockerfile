FROM softeu/java-7-host

MAINTAINER Jindrich Vimr <jvimr@softeu.com>



RUN mkdir /opt/jrebel/ && cd /opt/jrebel && wget -q http://dl.zeroturnaround.com/license-server/license-server-3.0.2.zip 
RUN cd /opt/jrebel && /usr/bin/unzip -u -o /opt/jrebel/license-server-3.0.2.zip

COPY run-lic-server.sh /run-lic-server.sh

EXPOSE 9000

VOLUME ["/opt/jrebel/license-server/data/"]


CMD "/run-lic-server.sh"
