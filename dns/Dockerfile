FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9 bind9utils bind9-doc

RUN mkdir -p /run/named && \
    chown bind:bind /run/named && \
    chmod 755 /run/named


COPY ./etc/* /etc/bind

EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 953/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]