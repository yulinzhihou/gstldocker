# Author:  yulinzhihou <yulinzhihou@gmail.com>
# Date  :  2023-04-18
# Notes :  billing server
# Project home page:
#       https://github.com/yulinzhihou
FROM alpine

LABEL Author="yulinzhihou" Email="yulinzhihou@gmail.com" website="https://gsgameshare.com"

ENV VERSION=0.48.0 TZ=Asia/Shanghai

WORKDIR /

RUN apk add --no-cache tzdata \
    && ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone

RUN if [ "$(uname -m)" = "x86_64" ]; then export PLATFORM=amd64 ; else if [ "$(uname -m)" = "aarch64" ]; then export PLATFORM=arm64 ; fi fi \
	&& wget --no-check-certificate https://github.com/fatedier/frp/releases/download/v${VERSION}/frp_${VERSION}_linux_${PLATFORM}.tar.gz \ 
	&& tar xzf frp_${VERSION}_linux_${PLATFORM}.tar.gz \
	&& cd frp_${VERSION}_linux_${PLATFORM} \
	&& mkdir /frp \
	&& mv frps frps.ini /frp \
	&& cd .. \
	&& rm -rf *.tar.gz frp_${VERSION}_linux_${PLATFORM}

VOLUME /frp

COPY frps.ini /frp

CMD /frp/frps -c /frp/frps.ini
