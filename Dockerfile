FROM amazonlinux
LABEL MAINTAINER Yonier Gomez
RUN dnf -y install httpd
COPY index.html containercat.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

