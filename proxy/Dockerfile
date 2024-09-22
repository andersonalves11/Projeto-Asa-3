FROM nginx:latest

RUN apt update 
RUN apt upgrade -y 
RUN apt install -y dnsutils

COPY default.conf /etc/nginx/conf.d/default.conf

COPY ./cert.cert /etc/ssl/certs
COPY ./cert.key /etc/ssl/private

RUN chown -R root:root /etc/ssl/private
RUN chmod -R 600 /etc/ssl/private
