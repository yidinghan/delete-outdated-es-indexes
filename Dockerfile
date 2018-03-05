FROM playdingnow/docker-cron-example:1.0

RUN apk add --no-cache curl

ENV cronjob='10 * * * */1 sh /delete-old-indexes.sh >> /dev/stdout'
ADD delete-old-indexes.sh /
RUN chmod -x delete-old-indexes.sh