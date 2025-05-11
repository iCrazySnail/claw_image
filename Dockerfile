FROM ubuntu:22.04

COPY src/ /root/

#RUN chmod +x /root/dufs-x64-linux \
#       && chmod +x /root/chsrc-x64-linux \
#      && chmod +x /root/curl \
#     && mv /root/curl /bin \
#    && /root/chsrc-x64-linux set ubuntu \
RUN apt update 2>/dev/null \
        && DEBIAN_FRONTEND=noninteractive apt install -y overlayroot vim tmux htop man wget ncdu dfc tree bash-completion iproute2 inetutils-ping fish nmap n2n openssh-server

EXPOSE 22

WORKDIR /root

CMD /bin/bash
