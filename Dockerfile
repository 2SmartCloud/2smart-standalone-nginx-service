FROM nginx:stable-alpine

RUN apk update && apk add tzdata

RUN rm /etc/nginx/conf.d/default.conf

COPY etc/conf.d/80.conf /etc/nginx/conf.d/80.conf