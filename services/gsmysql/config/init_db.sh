# 初始化数据库
mysql -uroot -p"${MYSQL_ROOT_PASSWORD}" -h127.0.0.1 -P3306 tlbbdb </docker-entrypoint-initdb.d/tlbbdb.sql
mysql -uroot -p"${MYSQL_ROOT_PASSWORD}" -h127.0.0.1 -P3306 web </docker-entrypoint-initdb.d/web.sql
