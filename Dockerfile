FROM ubuntu
MAINTAINER tchinde (ted.tchinde@gmail.com)
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install nginx git
EXPOSE 80
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]


