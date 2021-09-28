FROM alpine:3.13

MAINTAINER vlad.kamerdinerov@yandex.com

EXPOSE 80

# Install network tools
RUN     apk update \
    &&  apk add apache2-utils bash bind-tools busybox-extras curl ethtool git \
        iperf3 iproute2 iputils jq lftp mtr mysql-client \
        netcat-openbsd net-tools nginx nmap openssh-client openssl \
        perl-net-telnet postgresql-client procps rsync socat tcpdump tshark wget

# Add ttyd
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 /bin/ttyd

RUN chmod 755 /bin/ttyd
ENTRYPOINT ["/bin/ttyd", "-p 80", "bash"]