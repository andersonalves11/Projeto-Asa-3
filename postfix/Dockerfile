FROM ubuntu
RUN apt update
RUN apt upgrade -y
RUN apt-get install -y postfix dovecot-core dovecot-imapd dovecot-pop3d mailutils telnet
RUN apt install -q -y syslog-ng
RUN apt install -y telnet


COPY main.cf /etc/postfix/
COPY master.cf /etc/postfix/
COPY dovecot.conf /etc/dovecot/
COPY 10-auth.conf /etc/dovecot/conf.d/
COPY 10-mail.conf /etc/dovecot/conf.d/
COPY 10-master.conf /etc/dovecot/conf.d/
COPY cert.cert /etc/ssl/certs/cert.cert
COPY cert.key /etc/ssl/private/cert.key

RUN chown root:dovecot /etc/ssl/private/cert.key
RUN chown root:dovecot /etc/ssl/certs/cert.cert


# Add User
RUN useradd -m bob
RUN useradd -m anderson
RUN useradd -m gleyka
RUN useradd -m redes

# Set user passord
RUN echo "bob:redes"|chpasswd
RUN echo "anderson:redes"|chpasswd
RUN echo "gleyka:redes"|chpasswd
RUN echo "redes:redes"|chpasswd

CMD ["sh", "-c", "service syslog-ng start ; service postfix start ; service dovecot start; tail -F /var/log/mail.log"]
