FROM alpine

MAINTAINER Ericmas001

RUN apk add --update wget bash ca-certificates && rm -rf /var/cache/apk/*

ADD crontab /crontab.txt
ADD script.sh /script.sh

RUN chmod 755 /script.sh
RUN /usr/bin/crontab /crontab.txt

RUN touch /var/log/cron.log

ENV AFRAID_API_KEY=PROVIDE_ME

CMD ["/usr/sbin/crond", "-f"]