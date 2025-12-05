# Use Alpine as base image
FROM nginx:latest 

RUN mkdir -p /usr/share/nginx/html

COPY index.html /usr/share/nginx/html/

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]