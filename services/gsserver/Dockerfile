FROM centos:6.10

LABEL author="yulinzhihou" website="https://gsgameshare.com"

COPY ./config/mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm /tmp/mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm
COPY ./config/CentOS-Base.repo  /etc/yum.repos.d/
COPY ./config/CentOS-Debuginfo.repo  /etc/yum.repos.d/
COPY ./config/CentOS-fasttrack.repo  /etc/yum.repos.d/
COPY ./config/CentOS-Media.repo  /etc/yum.repos.d/
COPY ./config/CentOS-Vault.repo  /etc/yum.repos.d/

RUN mkdir -p /usr/local/src/tlbb && \
    yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y libstdc++.i686 unixODBC.i686 vim curl wget && \
    yum -y install epel-release && \
    yum -y install jq && \
    ln -s /usr/lib/libodbc.so /usr/lib/libodbc.so.1 && \
    yum localinstall -y /tmp/mysql-connector-odbc-5.1.5r1144-7.el6.i686.rpm && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && \
    rm -f /tmp/* && \
    yum clean all

WORKDIR /usr/local/src/tlbb

CMD tail -f /dev/null
