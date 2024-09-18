FROM ubuntu:latest

RUN apt update  
RUN apt upgrade -y
RUN apt install bind9 bind9-utils dnsutils -y

# Copy config files
COPY par.ifrn.asa.br /etc/bind 
COPY ifrn.asa.br /etc/bind
COPY named.conf.local /etc/bind 

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp
EXPOSE 443/tcp


# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
