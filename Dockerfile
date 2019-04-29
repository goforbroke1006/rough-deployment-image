FROM debian:stretch

MAINTAINER Sergey Cherkesov <go.for.broke1006@gmail.com>

ENV TARGET_HOST ''
ENV TARGET_USERNAME ''
ENV TARGET_PASSWORD ''

RUN mkdir -p ~/.ssh
RUN bash -c 'echo -e "Host *\n\tStrictHostKeyChecking no\n\n" > ~/.ssh/config'

RUN apt-get update
RUN apt-get install -y sshpass
RUN sshpass -V

COPY ./rssh /usr/bin/rssh
RUN chmod +x /usr/bin/rssh

CMD tail -f /dev/null
