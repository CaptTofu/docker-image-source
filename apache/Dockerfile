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

RUN apt-get install -y ssh vim apache2-mpm-prefork

RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh

# entrypoint script
ADD entrypoint.sh /usr/local/sbin/entrypoint.sh

ADD docker.pem.pub /root/.ssh/authorized_keys
RUN chown -R root:root /root/.ssh

# Expose SSH and Apache
EXPOSE 22 80 443 

ENTRYPOINT ["/usr/local/sbin/entrypoint.sh"]
