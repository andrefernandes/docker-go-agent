# CentOS 7 + Go CD Agent

FROM andrefernandes/docker-java7

MAINTAINER Andre Fernandes

WORKDIR /opt

RUN wget http://download.go.cd/gocd-rpm/go-agent-14.2.0-377.noarch.rpm -q && \
    yum -y localinstall go-agent-14.2.0-377.noarch.rpm && \
    rm go-agent-14.2.0-377.noarch.rpm && \
    yum clean all

RUN yum install git subversion -y && \
    yum clean all

ADD go-agent /etc/default/go-agent
ADD startagent.sh /opt/startagent.sh

RUN chmod +x /opt/startagent.sh

CMD ["/opt/startagent.sh"]

