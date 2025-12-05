# Use Alpine as base image
FROM alpine:latest

RUN apk update && apk add --no-cache nginx

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

