FROM centos:7
ADD mysql57.repo /etc/yum.repos.d
ADD RPM-GPG-KEY-mysql /etc/pki/rpm-gpg
WORKDIR /home/mydumper/src
RUN yum install git gcc gcc-c++ cmake make mysql-devel glib2-static zlib-static pcre-static openssl-static glibc-static libstdc++-static -y && \
    rm -f /usr/lib64/mysql/libmysqlclient.so*
CMD ["sh", "-c", "cmake . && make"]
