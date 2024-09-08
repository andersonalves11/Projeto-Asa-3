FROM ubuntu/bind9

RUN apt update

RUN apt upgrade 

RUN apt install dnsutils -y

# Copy config files
COPY ifrn.asa.br /etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp

# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
