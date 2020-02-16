FROM nginx

COPY ./build/ /usr/share/nginx/html/
RUN rm /etc/nginx/conf.d/*
COPY ./vhost.nginx.conf /etc/nginx/conf.d/hubint.conf

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]