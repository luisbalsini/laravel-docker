FROM wyveo/nginx-php-fpm:latest
WORKDIR /usr/share/nginx/

RUN rm -f /usr/share/ngix/html


COPY app /usr/share/nginx/app
COPY bootstrap /usr/share/nginx/bootstrap
COPY config /usr/share/nginx/config
COPY database /usr/share/nginx/database
COPY html /usr/share/nginx/html
COPY lang /usr/share/nginx/lang
COPY public /usr/share/nginx/public
COPY resources /usr/share/nginx/resources
COPY routes /usr/share/nginx/routes
COPY storage /usr/share/nginx/storage
COPY tests /usr/share/nginx/tests
COPY vendor /usr/share/nginx/vendor

COPY .dockerignore /usr/share/nginx/
COPY .editorconfig /usr/share/nginx/
COPY .env /usr/share/nginx/
COPY .env.example /usr/share/nginx/
COPY .gitattributes /usr/share/nginx/
COPY .gitignore /usr/share/nginx/
COPY artisan /usr/share/nginx/
COPY composer.json /usr/share/nginx/
COPY composer.lock /usr/share/nginx/
COPY package.json /usr/share/nginx/
COPY phpunit.xml /usr/share/nginx/
COPY README.md /usr/share/nginx/
COPY vite.config.js /usr/share/nginx/


RUN chmod -R 775 /usr/share/nginx/storage/*
RUN chmod -R ugo+rw /usr/share/nginx/storage/*