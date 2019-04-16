FROM ubuntu:16.04
MAINTAINER Sunil Jamadar <suniljamadar000@gmail.com>
RUN apt-get update -y \
&& apt-get install -y apt-transport-https \
&& apt-get install wget curl vim git jq -y 
WORKDIR /root/
ADD ./sunil.sh /root/
RUN chmod +x /root/sunil.sh
ENTRYPOINT while true; do sleep 1; done

