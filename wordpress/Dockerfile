FROM wordpress

RUN mkdir /etc/apache2/ssl
COPY ssl /etc/apache2/ssl
#RUN openssl req -new -newkey rsa:4096 -days 3650 -nodes -x509 -subj \
#    "/C=DE/ST=Bavaria/L=Augsburg/O=dsdev/CN=localhost" \
#    -keyout /etc/apache2/ssl/ssl.key -out /etc/apache2/ssl/ssl.crt

RUN a2enmod ssl

COPY ./000-default.conf /etc/apache2/sites-available/
RUN service apache2 start