FROM centos: latest
MAINTAINER atharwelcome@gmail.com
RUN yum install -y httpd\
zip \
unzip 
ADD https:www.free-css.com/assets/file/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN cp -rvf markups-kindle/*.
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
