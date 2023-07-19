# Author:  yulinzhihou <yulinzhihou@gmail.com>
# Date  :  2023-04-21
# Notes :  php70 php70-fpm
# Project home page:
#       https://github.com/yulinzhihou
FROM alpine:3.9.6

# 标准信息
LABEL Author="yulinzhihou" Email="yulinzhihou@gmail.com" website="https://gsgameshare.com"

# 配置环境变量
ENV PHP_DIR=/usr/local/php PHP_INI_DIR=${PHP_DIR}/etc PHP_VERSION=7.0.33 TZ="Asia/Shanghai" PATH=$PATH:${PHP_INI_DIR}/bin:/etc/init.d 

# 安装基础库
RUN apk update && \
    apk add --no-cache --virtual .checksum-deps \
    openssl \
    tzdata  \
    openrc \
    build-base \
    openssl-dev \
    pcre-dev \
    libxml2-dev \
    curl-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    freetype-dev \
    libmcrypt-dev \
    libxslt-dev \
    wget \
    make \
    gcc \
    libc-dev \
    zlib-dev \
    linux-headers \
    libxslt-dev \
    gd-dev \
    alpine-sdk \
    gettext-dev

ADD data/php-${PHP_VERSION}.tar.gz /usr/local/src

# 执行源码编译过程
RUN  cd /usr/local/src/php-${PHP_VERSION} && \
    ./configure \
    --prefix=${PHP_DIR} \
    --with-config-file-path=${PHP_INI_DIR} \
    --with-curl \
    --with-freetype-dir \
    --with-gd \
    --with-gettext \
    --with-iconv-dir \
    --with-jpeg-dir \
    --with-kerberos \
    --with-libdir=lib64 \
    --with-libxml-dir=/usr \
    --with-mcrypt \
    --with-mysql \
    --with-mysqli \
    --with-openssl \
    --with-pcre-regex \
    --with-pdo-mysql \
    --with-png-dir \
    --with-xmlrpc \
    --with-xsl \
    --with-zlib \
    --enable-fpm \
    --enable-bcmath \
    --enable-libxml \
    --enable-inline-optimization \
    --enable-gd-native-ttf \
    --enable-mbregex \
    --enable-mbstring \
    --enable-opcache \
    --enable-pcntl \
    --enable-shmop \
    --enable-soap \
    --enable-sockets \
    --enable-sysvsem \
    --enable-xml \
    --enable-zip && \
    make && \
    make install && \
    cp php.ini-development ${PHP_INI_DIR}/php.ini && \
    cp sapi/fpm/php-fpm.conf.in ${PHP_INI_DIR}/php-fpm.conf && \
    cp sapi/fpm/init.d.php-fpm /etc/init.d/php-fpm && \
    chmod +x /etc/init.d/php-fpm && \
    rc-update add php-fpm && \
    make clean && \
    echo "export PATH=$PATH:${PHP_DIR}/bin" >> /etc/profile && \
    rm -rf /usr/local/src/* /var/cache/* /var/tmp/* /tmp/*

# 为了节省空间，删除不需要使用的依赖文件及包
RUN apk del openssl \
    tzdata  \
    openrc \
    build-base \
    openssl-dev \
    pcre-dev \
    libxml2-dev \
    curl-dev \
    libjpeg-turbo-dev \
    libpng-dev \
    freetype-dev \
    libmcrypt-dev \
    libxslt-dev \
    wget \
    make \
    gcc \
    libc-dev \
    zlib-dev \
    linux-headers \
    libxslt-dev \
    gd-dev \
    alpine-sdk \
    gettext-dev

EXPOSE 9070