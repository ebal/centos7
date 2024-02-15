# VERSION   0.0.1

FROM    centos:7

# Make Deps
RUN yum -y install rpm-build autoconf automake curl gcc make pkg-config &> /dev/null

# Clean up
RUN yum clean all          && \
    rm -rf /var/cache/yum/ && \
    rm -rf /usr/share/doc/

