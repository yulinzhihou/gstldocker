FROM mysql:8.0.42

LABEL author="yulinzhihou" website="https://gsgameshare.com" e-mail="yulinzhihou@gmail.com"

ENV PATH $PATH:/usr/local/mysql/bin:/usr/local/mysql/scripts

COPY initdb.d/*.sql /docker-entrypoint-initdb.d/
COPY config/* /usr/local/bin/

VOLUME /var/lib/mysql

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \ 
	echo 'Asia/Shanghai' >/etc/timezone && \
	chmod 777 usr/local/bin/docker-entrypoint.sh && \
	RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

COPY config/my.cnf /etc/my.cnf.d

EXPOSE 3306

CMD ["mysqld", "--datadir=/var/lib/mysql", "--user=mysql"]
