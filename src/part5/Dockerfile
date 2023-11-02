FROM alpine

RUN apk update && apk add --no-cache nginx nmap
RUN addgroup nginx root
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c /etc/nginx/hello.c
COPY ./start.sh /etc/nginx/start.sh
RUN apk update && apk add --no-cache gcc spawn-fcgi fcgi fcgi-dev musl-dev;
RUN for i in $(find /* -type d 2> dev/null); do chown -R nginx:nginx $i 2> dev/null; done
USER nginx
WORKDIR /etc/nginx/
ENTRYPOINT ["sh", "./start.sh"]
