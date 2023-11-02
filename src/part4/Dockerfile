FROM nginx
USER root
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./hello.c /etc/nginx/hello.c
COPY ./start.sh /etc/nginx/start.sh
RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev
WORKDIR /etc/nginx/
ENTRYPOINT ["sh", "./start.sh"]
