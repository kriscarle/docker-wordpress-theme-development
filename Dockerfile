FROM wordpress:latest

#Map for Environment WordPress Server
MAINTAINER Kristofor Carle - Moabi <kris@moabi.org>

# Add sudo in order to run wp-cli as the www-data user
RUN apt-get update && apt-get install -y sudo less zip \
&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Add WP-CLI
RUN curl -o /usr/local/bin/wp https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /usr/local/bin/wp

RUN mkdir -p /app

COPY docker-entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["apache2-foreground"]
