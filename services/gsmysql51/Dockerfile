FROM yulinzhihou/gs_mysql51:v1.0

LABEL author="yulinzhihou" website="https://gsgameshare.com" e-mail="yulinzhihou@gmail.com"

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN mkdir /docker-entrypoint-initdb.d && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
COPY initdb.d/*.sql /docker-entrypoint-initdb.d/
COPY config/*.sh /usr/local/bin/
COPY config/*.sql /usr/local/bin/
COPY config/docker-entrypoint.sh /entrypoint.sh
COPY config/my.cnf /etc/my.cnf
ENV PATH $PATH:/usr/local/mysql/bin:/usr/local/mysql/scripts

WORKDIR /usr/local/mysql

VOLUME /var/lib/mysql

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306

CMD ["mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]
