FROM nginx:stable
LABEL maintainer="rodjonh@gmail.com"

ADD hugo/ /usr/share/nginx/hugo/
COPY default.conf /etc/nginx/conf.d/

RUN apt update && apt install -y vim
RUN apt install -y procps net-tools
