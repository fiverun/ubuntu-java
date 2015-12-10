FROM ubuntu:14.04

MAINTAINER Ivan Suhinin <ivan@fiverun.com>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y install \
   && apt-get -y upgrade && apt-get -y install ntp software-properties-common \
   && echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections \
   && echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections \
   && add-apt-repository -y ppa:webupd8team/java \
   && apt-get -y update \
   && apt-get -y install oracle-java8-installer \
   && apt-get install -y oracle-java8-set-default \
   && apt-get install -y wget
