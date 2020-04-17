FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    apache2 \
    apache2-utils \
    libapache2-mod-svn \
    subversion \
    && rm -rf /var/lib/apt/lists/* \
    && ln -sf /dev/stdout /var/log/apache2/error.log \
    && ln -sf /dev/stdout /var/log/apache2/access.log

COPY svn.conf /etc/apache2/conf-enabled/

VOLUME [ "/mnt/subversion" ]

EXPOSE 80

ENTRYPOINT ["/bin/bash"]
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
