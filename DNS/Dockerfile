FROM ubuntu/bind9

RUN apt update

RUN apt upgrade 

RUN apt install dnsutils -y

# Copy config files
<<<<<<< HEAD
COPY ifrn.asa.br /etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf
=======
COPY ./etc/* /etc/bind
>>>>>>> 9ccb9adea5cf57be9fa73eb789e5915fbe6c57cc

# Expose Ports
EXPOSE 53/tcp
EXPOSE 53/udp

# Start the Name Service
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
