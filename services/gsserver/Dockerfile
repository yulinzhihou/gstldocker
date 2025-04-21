FROM centos:6.10

LABEL author="yulinzhihou" website="https://gsgameshare.com"

RUN mkdir -p /usr/local/src/tlbb

WORKDIR /usr/local/src/tlbb

COPY lib/mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm /usr/local/src/tlbb/mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm

COPY config/*.repo  /etc/yum.repos.d/

RUN yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y libstdc++.i686 unixODBC.i686 vim curl wget mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm && \
    yum -y install epel-release && \
    yum -y install jq vim wget && \
    ln -s /usr/lib/libodbc.so /usr/lib/libodbc.so.1 && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && \
    rm -rf /usr/local/src/tlbb/mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm && \
    yum clean all

CMD tail -f /dev/null
