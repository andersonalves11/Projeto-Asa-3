FROM ubuntu/bind9

RUN apt-get update && \
    apt-get install -y bind9 bind9utils bind9-doc

# Copy config files
COPY ifrn.asa.br /etc/bind 
COPY named.conf.local /etc/bind 

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp


# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
