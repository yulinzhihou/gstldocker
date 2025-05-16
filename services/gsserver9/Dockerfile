FROM quay.io/centos/centos:stream9

LABEL author="yulinzhihou" website="https://gsgameshare.com" email="yulinzhihou@gmail.com"

RUN mkdir -p /home/tlbb

WORKDIR /home/tlbb

COPY lib/mysql-connector-odbc-8.3.0-1.el8.x86_64.rpm /home/tlbb/mysql-connector-odbc-8.3.0-1.el8.x86_64.rpm

RUN \
    dnf -y upgrade --allowerasing && \
    dnf install -y libstdc++ unixODBC vim curl wget --allowerasing && \
    rpm -Uvh mysql-connector-odbc-8.3.0-1.el8.x86_64.rpm && \
    dnf -y install epel-release --allowerasing && \
    dnf -y install jq vim wget --allowerasing && \
    ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo 'Asia/Shanghai' > /etc/timezone && \
    dnf clean all && \
    rm -rf /home/tlbb/mysql-connector-odbc-8.3.0-1.el8.x86_64.rpm

WORKDIR /home/tlbb

CMD tail -f /dev/null
