FROM ec2-user: latest
MAINTAINER atharwelcome@gmail.com
RUN yum install -y httpd  \
 zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/plusbusiness.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip plusbusiness.zip
RUN cp -rvf plusbusiness/* .
RUN rm -rf _MACOSX plusbusiness plusbusiness.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 8080
