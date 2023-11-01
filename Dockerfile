FROM registry.suse.com/bci/bci-base:15.3
RUN zypper -n in python3 && \
    echo "Hello Green World!" > index.html
ENTRYPOINT ["/usr/bin/python3", "-m", "http.server"]
EXPOSE 80
