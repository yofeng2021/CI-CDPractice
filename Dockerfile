FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    git \
    apache2 \
    php7.2 \
    php7.2-mysqli \
    libapache2-mod-php7.2
RUN git clone https://github.com/chinaliukun/CI-CDPractice.git \
    && mv CI-CDPractice /var/www/html \
    && chown -R www-data:www-data /var/www/html
