# Percona XtraDB Cluster Dockerfile
#
# VERSION    0.0.1
#
FROM ubuntu:13.04
MAINTAINER Patrick aka CaptTofu Galbraith , patg@patg.net

# Add Percona repository
RUN apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
ADD percona.list /etc/apt/sources.list.d/percona.list

# Update distribution
RUN apt-get update \
      && apt-get upgrade -y \
      && apt-get clean

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libterm-readline-gnu-perl ssh vim percona-xtradb-cluster-client-5.6 percona-xtradb-cluster-server-5.6

RUN mkdir /var/run/sshd
RUN mkdir /root/.ssh
RUN chmod 700 /root/.ssh
ADD docker.pem.pub /root/.ssh/authorized_keys
RUN chown -R root:root /root/.ssh

ADD entrypoint.sh /usr/local/sbin/entrypoint.sh
RUN chmod 755 /usr/local/sbin/entrypoint.sh

# Expose SSH and MySQL ports
EXPOSE 22 3306 4444 4567 9200

CMD ["/usr/local/sbin/entrypoint.sh"]
