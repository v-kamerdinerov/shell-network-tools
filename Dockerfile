FROM alpine:3.13
MAINTAINER vlad.kamerdinerov@yandex.com

EXPOSE 80

# Install network tools
RUN     apk update \
    &&  apk add bash bind-tools busybox-extras curl \
                iproute2 iputils jq mtr \
                net-tools openssl \
                perl-net-telnet procps tcpdump wget
# Add ttyd
ADD https://github.com/tsl0922/ttyd/releases/download/1.6.3/ttyd.x86_64 /bin/ttyd

RUN chmod 755 /bin/ttyd
ENTRYPOINT ["/bin/ttyd", "-p 80", "bash"]
