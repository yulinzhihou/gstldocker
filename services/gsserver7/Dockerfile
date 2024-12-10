FROM centos:7.9.2009

LABEL author="yulinzhihou" website="https://gsgameshare.com" email="yulinzhihou@gmail.com"

RUN mkdir -p /usr/local/src/tlbb

WORKDIR /usr/local/src/tlbb

RUN yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y libstdc++.i686 unixODBC.i686 vim curl wget mysql-connector-odbc.x86_64 && \
    yum -y install epel-release && \
    yum -y install jq vim wget && \
    ln -s /usr/lib/libodbc.so /usr/lib/libodbc.so.1 && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && \
    yum clean all

CMD tail -f /dev/null
