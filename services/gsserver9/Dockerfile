FROM rockylinux:9.3

LABEL author="yulinzhihou" website="https://gsgameshare.com" email="yulinzhihou@gmail.com"

RUN mkdir -p /home/tlbb

WORKDIR /home/tlbb

COPY lib/mysql-connector-odbc-8.4.0-1.el9.x86_64.rpm /home/tlbb/mysql-connector-odbc-8.4.0-1.el9.x86_64.rpm

RUN yum clean all && \
    yum makecache && \
    yum update -y && \
    yum install -y libstdc++ unixODBC vim curl wget && \
    rpm -Uvh mysql-connector-odbc-8.4.0-1.el9.x86_64.rpm && \
    yum -y install epel-release && \
    yum -y install jq vim wget && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone && \
    yum clean all && \
    rm -rf /home/tlbb/mysql-connector-odbc-8.4.0-1.el9.x86_64.rpm

WORKDIR /home/tlbb

CMD tail -f /dev/null
