FROM playdingnow/docker-cron-example:1.0

ENV cronjob='10 * * * */1 sh /app/delete-old-indexes.sh'
ADD delete-old-indexes.sh /app