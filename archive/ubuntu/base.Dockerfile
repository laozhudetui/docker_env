FROM ubuntu:xenial-20210114

RUN apt-get -y update && apt-get -y upgrade && apt-get install -y wget curl ssh iproute2 net-tools dnsutils vim supervisor htop bash-completion openjdk-8-jdk git apt-utils iputils-ping unzip tzdata man apt-transport-https && apt-get clean

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure --frontend noninteractive tzdata

