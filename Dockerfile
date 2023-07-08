# VERSION   0.0.1

FROM    centos:7

# Make Deps
RUN yum -y install ruby-devel gcc make rpm-build rubygems &> /dev/null

# Clean up
RUN yum clean all          && \
    rm -rf /var/cache/yum/ && \
    rm -rf /usr/share/doc/

# Install ffi & fpm
RUN gem install ffi -v 1.12.2          && \
    gem install --no-document fpm -v 1.11.0
