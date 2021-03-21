FROM wordpress

RUN mkdir /etc/apache2/ssl
COPY ssl /etc/apache2/ssl

RUN a2enmod ssl

COPY ./000-default.conf /etc/apache2/sites-available/
RUN service apache2 start