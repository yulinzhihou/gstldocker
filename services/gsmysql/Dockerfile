FROM mysql:5.7.44

LABEL author="yulinzhihou" website="https://gsgameshare.com" e-mail="yulinzhihou@gmail.com"

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

COPY initdb.d/*.sql /docker-entrypoint-initdb.d/
COPY config/* /usr/local/bin/
COPY config/my.cnf /etc/my.cnf

ENV PATH $PATH:/usr/local/mysql/bin:/usr/local/mysql/scripts

WORKDIR /usr/local/mysql

VOLUME /var/lib/mysql

RUN chmod -R 777 /usr/local/bin

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

EXPOSE 3306

CMD ["mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]
