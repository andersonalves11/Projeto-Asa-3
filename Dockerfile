FROM ubuntu:20.04

RUN apt update

RUN apt upgrade -y

RUN apt install postfix  dovecot-imapd dovecot-pop3d -y

RUN apt install -q -y syslog-ng

RUN apt install -y telnet

COPY main.cf /etc/postfix

COPY 10-auth.conf /etc/dovecot/conf.d

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
