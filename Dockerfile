FROM alpine/curl:8.10.0

COPY ./entrypoint.sh /entrypoint.sh
COPY ./jobs/hourly/ /etc/periodic/hourly/
