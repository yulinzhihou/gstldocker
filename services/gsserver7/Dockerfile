FROM centos:7.9.2009

LABEL author="yulinzhihou" website="https://gsgameshare.com" email="yulinzhihou@gmail.com"

RUN mkdir -p /usr/local/src/tlbb

WORKDIR /usr/local/src/tlbb

COPY lib/mysql-connector-odbc-5.3.13-1.el7.x86_64.rpm /usr/local/src/tlbb/mysql-connector-odbc-5.3.13-1.el7.x86_64.rpm

COPY config/*.repo  /etc/yum.repos.d/

RUN yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y libstdc++ unixODBC vim curl wget && \
    yum -y install epel-release && \
    yum -y install jq vim wget && \
    ln -s /usr/lib/libodbc.so /usr/lib/libodbc.so.1 && \
    yum -y install mysql-connector-odbc-5.3.13-1.el7.x86_64.rpm && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && \
    yum clean all

CMD tail -f /dev/null
