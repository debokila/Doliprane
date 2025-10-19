FROM alpine:3.20 

RUN apk add --no-cache darkhttpd
WORKDIR /www
COPY index.html /www/index.html

EXPOSE 80

CMD ["darkhttpd", "/www", "--port", "80"]

