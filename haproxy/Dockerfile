# haproxy Dockerfile
#
# VERSION    0.0.1
#
FROM ubuntu:13.04
MAINTAINER Patrick aka CaptTofu Galbraith , patg@patg.net

# Update distribution
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get clean

RUN apt-get install -y haproxy ssh vim

RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh

Add entrypoint.sh /usr/local/sbin/entrypoint.sh

ADD haproxy.cfg /etc/haproxy/haproxy.cfg
RUN chown -R root:root /etc/haproxy/haproxy.cfg

ADD docker.pem.pub /root/.ssh/authorized_keys
RUN chown -R root:root /root/.ssh

# Expose HAProxy admin
EXPOSE 22 22002

ENTRYPOINT ["/usr/local/sbin/entrypoint.sh"]
