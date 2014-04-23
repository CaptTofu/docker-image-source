# ubuntu_ssh Dockerfile
#
# VERSION    0.0.1
#
FROM capttofu/docker-dna_base
MAINTAINER Patrick aka CaptTofu Galbraith , patg@patg.net

# Update distribution
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get clean

RUN apt-get install -y ssh vim

RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh

Add sshd.sh /usr/local/sbin/sshd.sh

ADD docker.pem.pub /root/.ssh/authorized_keys
RUN chown -R root:root /root/.ssh

# Expose SSH 
EXPOSE 22 

#ENTRYPOINT ["/usr/local/sbin/sshd.sh"]
