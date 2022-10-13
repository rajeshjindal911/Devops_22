FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y nginx \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/icream.zip /var/www/html
WORKDIR /var/www/html
RUN unzip icream.zip
RUN cp -rvf ice-cream-shop-website-template/* .
RUN rm -rf icream.zip ice-cream-shop-website-template
EXPOSE 911
STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
