FROM alpine/curl:8.10.0

COPY ./entrypoint.sh /entrypoint.sh
COPY ./jobs/hourly/ /etc/periodic/hourly/

RUN mkdir /etc/periodic/minutely
COPY ./jobs/minutely/ /etc/periodic/minutely/
RUN echo "* * * * * run-parts /etc/periodic/minutely" >> /var/spool/cron/crontabs/root
