FROM ubuntu/bind9

RUN apt update

RUN apt upgrade -y

RUN apt install dnsutils -y

# Copy config files
COPY ifrn.asa.br /etc/bind 
COPY named.conf.local /etc/bind 

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp


# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
