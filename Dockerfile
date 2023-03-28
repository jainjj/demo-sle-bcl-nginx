"Dockerfile" 14L, 331C                                                                                                                                                                                                                                        1,40          All
FROM registry.suse.com/bci/bci-base:15.4

MAINTAINER Steve McBride

RUN zypper ref \
    && zypper in nginx --non-interactive\
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf

ADD default /etc/nginx/sites-available/default

EXPOSE 80
CMD ["nginx"]
