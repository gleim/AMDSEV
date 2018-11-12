# base image
FROM ubuntu:18.04 AS builder

# use local sources.list for complete packages
RUN sudo cp ./sources.list /etc/apt/ && \
    sudo apt-get update && \
    sudo apt-get dist-upgrade && \
    sudo service dbus restart

RUN ls

CMD [ "node", "coveai_server.js" ]
