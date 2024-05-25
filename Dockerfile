FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
# Copy the index.html dockefile
COPY index.html /var/www/html
CMD ["/usr/sbin/apachectl","-D","FOREGROUND"]
