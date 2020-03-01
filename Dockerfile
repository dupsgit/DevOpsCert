FROM devopsedu/webapp:latest
MAINTAINER dupretiEdureka dupreti@test.com
ARG WEB_SITE_PATH
ENV WEB_SITE_PATH=website
RUN /bin/bash -c 'mv /var/www/html/index.html /var/www/html/index.html.old'
RUN /bin/bash -c 'mv /var/www/html/index.php /var/www/html/index.php.old'
COPY $WEB_SITE_PATH/. /var/www/html/
CMD service apache2 start && /bin/bash
