FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y nginx \
    zip \
    unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page283/ninom.zip /var/www/html
WORKDIR /var/www/html
RUN unzip ninom.zip
RUN cp -rvf ninom-html/* .
RUN rm -rf ninom.zip ninom-html
EXPOSE 911
STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
