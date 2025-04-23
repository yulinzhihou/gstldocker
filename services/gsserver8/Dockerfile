FROM centos:8.4.2105

LABEL author="yulinzhihou" website="https://gsgameshare.com" email="yulinzhihou@gmail.com"

RUN mkdir -p /usr/local/src/tlbb

WORKDIR /usr/local/src/tlbb

COPY lib/mysql-connector-odbc-5.3.13-1.el7.i686.rpm /usr/local/src/tlbb/mysql-connector-odbc-5.3.13-1.el7.i686.rpm

COPY config/*.repo  /etc/yum.repos.d/

RUN yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y libstdc++.i686 unixODBC.i686 glibc-common.i686 vim curl wget && \
    yum -y install epel-release && \
    yum -y install jq vim wget && \
    ln -s /usr/lib/libodbc.so /usr/lib/libodbc.so.1 && \
    rpm -Uvh mysql-connector-odbc-5.3.13-1.el7.i686.rpm && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && \
    yum clean all && \
    rm -rf /usr/local/src/tlbb

WORKDIR /home/tlbb

CMD tail -f /dev/null
