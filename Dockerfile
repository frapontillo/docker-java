FROM        ubuntu:14.04
MAINTAINER  Francesco Pontillo <francescopontillo@gmail.com>

RUN         apt-get update -y && apt-get install -y \
            software-properties-common
RUN         echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN         add-apt-repository ppa:webupd8team/java -y \
            && apt-get update -y && apt-get install -y \
            oracle-java8-installer \
            oracle-java8-set-default
