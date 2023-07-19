# Author:  yulinzhihou <yulinzhihou@gmail.com>
# Date  :  2023-04-18
# Notes :  billing server
# Project home page:
#       https://github.com/yulinzhihou
# 内部容器，不需要暴露任何端口出去。
FROM alpine

LABEL Author="yulinzhihou" Email="yulinzhihou@gmail.com" website="https://gsgameshare.com"

ADD data/ini.tar.gz /billing

WORKDIR /billing

RUN chmod -R 777 /billing

ENTRYPOINT ["/billing/billing"]

CMD ["up",'"-d']
