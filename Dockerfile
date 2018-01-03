FROM gongkunjxl/mpi-base:0.1.0

MAINTAINER gongkun <gongkunjxl@163.com>

WORKDIR /root

# install openssh-server, openjdk and wget
RUN apt-get update

#mount files
RUN mkdir -p /root/GridGraph
RUN chmod -R 777 /root/GridGraph

ADD GridGraph /root/GridGraph

#the privileged
RUN chmod 644 ~/.ssh/config

EXPOSE 22 8088

CMD '/root/script.sh'; 'bash'






