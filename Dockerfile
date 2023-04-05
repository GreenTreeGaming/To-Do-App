FROM ubuntu:latest

RUN apt-get update
RUN apt-get -y install nginx

COPY index.html /var/www/html/index.html
COPY main.css /var/www/html/main.css
COPY main.js /var/www/html/main.js

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
