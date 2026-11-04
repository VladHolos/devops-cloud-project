FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html

RUN sed -i 's/80/10000/g' /etc/nginx/conf.d/default.conf

EXPOSE 10000
