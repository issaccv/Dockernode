FROM python:2-alpine
LABEL maintainer="Issacc <8qllyhy@gmail.com>"
RUN apk --no-cache add\
                        libressl-dev \
                        openssl-dev  && \
    apk add --no-cache --virtual .build-deps \
                        git          && \
     git clone https://github.com/Ehco1996/shadowsocksr.git "/root/shadowsocks" --depth 1 && \
     cd  /root/shadowsocks                    && \
     pip install --no-cache-dir --upgrade pip                && \
     pip install --no-cache-dir -r requirements.txt          && \
     rm -rf ~/.cache && touch /etc/hosts.deny && \
     apk del --purge .build-deps

WORKDIR /root/shadowsocks

CMD ["python","server.py"] >>  configs/server.log