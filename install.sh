#!/usr/bin/env bash

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> !/usr/bin/env bash"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

export DEBIAN_FRONTEND=noninteractive

# Updating Package List

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Updating Package List"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get -y update && apt-get -y upgrade && apt-get -y autoremove && apt-get -y autoclean

# Installing PPAs

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing PPAs"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y software-properties-common

apt-add-repository ppa:nginx/stable -y
apt-add-repository ppa:ondrej/php -y

# Updating Package List

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Updating Package List"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get -y update && apt-get -y upgrade && apt-get -y autoremove && apt-get -y autoclean

# Installing basic packages

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing basic packages"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y build-essential dos2unix gcc libmcrypt4 libpcre3-dev ntp unzip \
make python2.7-dev re2c supervisor unattended-upgrades whois libnotify-bin \
pv cifs-utils mcrypt zsh

# Installing PHP stuffs

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing PHP stuffs"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

# Current PHP 8.0

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 8.0"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
php8.0-cli php8.0-dev \
php8.0-pgsql php8.0-sqlite3 php8.0-gd \
php8.0-curl php8.0-memcached \
php8.0-imap php8.0-mysql php8.0-mbstring \
php8.0-xml php8.0-zip php8.0-bcmath php8.0-soap \
php8.0-intl php8.0-readline php8.0-bz2 \
php8.0-xdebug

# PHP 7.4

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.4"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
php7.4-cli php7.4-dev \
php7.4-pgsql php7.4-sqlite3 php7.4-gd \
php7.4-curl php7.4-memcached \
php7.4-imap php7.4-mysql php7.4-mbstring \
php7.4-xml php7.4-zip php7.4-bcmath php7.4-soap \
php7.4-intl php7.4-readline php7.4-bz2 \
php7.4-xdebug php7.4-json

# PHP 7.3

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.3"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
php7.3-cli php7.3-dev \
php7.3-pgsql php7.3-sqlite3 php7.3-gd \
php7.3-curl php7.3-memcached \
php7.3-imap php7.3-mysql php7.3-mbstring \
php7.3-xml php7.3-zip php7.3-bcmath php7.3-soap \
php7.3-intl php7.3-readline php7.3-bz2 \
php7.3-xdebug php7.3-json

# PHP 7.2

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.2"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
php7.2-cli php7.2-dev \
php7.2-pgsql php7.2-sqlite3 php7.2-gd \
php7.2-curl php7.2-memcached \
php7.2-imap php7.2-mysql php7.2-mbstring \
php7.2-xml php7.2-zip php7.2-bcmath php7.2-soap \
php7.2-intl php7.2-readline php7.2-bz2 \
php7.2-xdebug php7.2-json

# PHP 7.1

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.1"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
php7.1-cli php7.1-dev \
php7.1-pgsql php7.1-sqlite3 php7.1-gd \
php7.1-curl php7.1-memcached \
php7.1-imap php7.1-mysql php7.1-mbstring \
php7.1-xml php7.1-zip php7.1-bcmath php7.1-soap \
php7.1-intl php7.1-readline php7.1-bz2 \
php7.1-xdebug php7.1-json

# PHP 7.0

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.0"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
php7.0-cli php7.0-dev \
php7.0-pgsql php7.0-sqlite3 php7.0-gd \
php7.0-curl php7.0-memcached \
php7.0-imap php7.0-mysql php7.0-mbstring \
php7.0-xml php7.0-zip php7.0-bcmath php7.0-soap \
php7.0-intl php7.0-readline php7.0-bz2 \
php7.0-xdebug php7.0-json

update-alternatives --set php /usr/bin/php8.0

# Configuring PHP CLI settings

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring PHP CLI settings"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/8.0/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/8.0/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/8.0/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/8.0/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.4/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.4/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.4/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.4/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.3/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.3/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.3/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.3/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.2/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.2/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.2/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.2/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.1/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.1/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.1/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.1/cli/php.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/cli/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/cli/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.0/cli/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.0/cli/php.ini

# Installing Nginx & php-fpm

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing Nginx & php-fpm"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y --allow-downgrades --allow-remove-essential --allow-change-held-packages --allow-unauthenticated \
nginx php8.0-fpm php7.4-fpm php7.3-fpm php7.2-fpm php7.1-fpm php7.0-fpm

systemctl restart nginx

# Installing Composer

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing Composer"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Configuring php-fpm options

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring php-fpm options"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

# PHP 8.0

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 8.0"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

echo "xdebug.remote_enable = 1" >> /etc/php/8.0/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/8.0/mods-available/xdebug.ini
echo "xdebug.remote_port = 9003" >> /etc/php/8.0/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/8.0/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/8.0/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/8.0/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/8.0/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/8.0/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/8.0/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/8.0/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/8.0/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/8.0/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/8.0/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/8.0/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/8.0/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/8.0/fpm/php.ini


# PHP 7.4

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.4"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

echo "xdebug.remote_enable = 1" >> /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.remote_port = 9003" >> /etc/php/7.4/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.4/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.4/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.4/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.4/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.4/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.4/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.4/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.4/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.4/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.4/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.4/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.4/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.4/fpm/php.ini

# PHP 7.3

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.3"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

echo "xdebug.remote_enable = 1" >> /etc/php/7.3/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.3/mods-available/xdebug.ini
echo "xdebug.remote_port = 9003" >> /etc/php/7.3/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.3/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.3/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.3/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.3/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.3/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.3/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.3/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.3/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.3/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.3/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.3/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.3/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.3/fpm/php.ini

# PHP 7.2

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.2"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

echo "xdebug.remote_enable = 1" >> /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.remote_port = 9003" >> /etc/php/7.2/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.2/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.2/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.2/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.2/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.2/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.2/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.2/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.2/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.2/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.2/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.2/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.2/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.2/fpm/php.ini

# PHP 7.1

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.1"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

echo "xdebug.remote_enable = 1" >> /etc/php/7.1/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.1/mods-available/xdebug.ini
echo "xdebug.remote_port = 9003" >> /etc/php/7.1/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.1/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.1/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.1/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.1/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.1/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.1/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.1/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.1/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.1/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.1/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.1/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.1/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.1/fpm/php.ini

# PHP 7.0

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.0"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

echo "xdebug.remote_enable = 1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_connect_back = 1" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.remote_port = 9003" >> /etc/php/7.0/mods-available/xdebug.ini
echo "xdebug.max_nesting_level = 512" >> /etc/php/7.0/mods-available/xdebug.ini
echo "opcache.revalidate_freq = 0" >> /etc/php/7.0/mods-available/opcache.ini

sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php/7.0/fpm/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php/7.0/fpm/php.ini
sed -i "s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/" /etc/php/7.0/fpm/php.ini
sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.0/fpm/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 100M/" /etc/php/7.0/fpm/php.ini
sed -i "s/post_max_size = .*/post_max_size = 100M/" /etc/php/7.0/fpm/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.0/fpm/php.ini

printf "[openssl]\n" | tee -a /etc/php/7.0/fpm/php.ini
printf "openssl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.0/fpm/php.ini

printf "[curl]\n" | tee -a /etc/php/7.0/fpm/php.ini
printf "curl.cainfo = /etc/ssl/certs/ca-certificates.crt\n" | tee -a /etc/php/7.0/fpm/php.ini

# Configuring XDebug

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring XDebug"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

phpdismod -s cli xdebug

# Configuring fastcgi_params

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring fastcgi_params"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

cat > /etc/nginx/fastcgi_params << EOF
fastcgi_param	QUERY_STRING		\$query_string;
fastcgi_param	REQUEST_METHOD		\$request_method;
fastcgi_param	CONTENT_TYPE		\$content_type;
fastcgi_param	CONTENT_LENGTH		\$content_length;
fastcgi_param	SCRIPT_FILENAME		\$request_filename;
fastcgi_param	SCRIPT_NAME			\$fastcgi_script_name;
fastcgi_param	REQUEST_URI			\$request_uri;
fastcgi_param	DOCUMENT_URI		\$document_uri;
fastcgi_param	DOCUMENT_ROOT		\$document_root;
fastcgi_param	SERVER_PROTOCOL		\$server_protocol;
fastcgi_param	GATEWAY_INTERFACE	CGI/1.1;
fastcgi_param	SERVER_SOFTWARE		nginx/\$nginx_version;
fastcgi_param	REMOTE_ADDR			\$remote_addr;
fastcgi_param	REMOTE_PORT			\$remote_port;
fastcgi_param	SERVER_ADDR			\$server_addr;
fastcgi_param	SERVER_PORT			\$server_port;
fastcgi_param	SERVER_NAME			\$server_name;
fastcgi_param	HTTPS				\$https if_not_empty;
fastcgi_param	REDIRECT_STATUS		200;
EOF

# Configuring Nginx & php-fpm user

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring Nginx & php-fpm user"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/# server_names_hash_bucket_size.*/server_names_hash_bucket_size 64;/" /etc/nginx/nginx.conf

# PHP 8.0

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 8.0"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php/8.0/fpm/pool.d/www.conf

# PHP 7.4

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.4"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php/7.4/fpm/pool.d/www.conf

# PHP 7.3

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.3"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php/7.3/fpm/pool.d/www.conf

# PHP 7.2

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.2"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php/7.2/fpm/pool.d/www.conf

# PHP 7.1

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.1"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php/7.1/fpm/pool.d/www.conf

# PHP 7.0

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> PHP 7.0"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

sed -i "s/;listen\.mode.*/listen.mode = 0666/" /etc/php/7.0/fpm/pool.d/www.conf

# Configuring Nginx & PHP services

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring Nginx & PHP services"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

systemctl restart nginx
systemctl restart php8.0-fpm
systemctl restart php7.4-fpm
systemctl restart php7.3-fpm
systemctl restart php7.2-fpm
systemctl restart php7.1-fpm
systemctl restart php7.0-fpm

systemctl enable nginx
systemctl enable php8.0-fpm
systemctl enable php7.4-fpm
systemctl enable php7.3-fpm
systemctl enable php7.2-fpm
systemctl enable php7.1-fpm
systemctl enable php7.0-fpm

# Installing MariaDB

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing MariaDB"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get -y update
apt-get -y upgrade
apt-get install -y mariadb-server mariadb-client

# Configuring MariaDB service

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring MariaDB service"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

systemctl start mysql

systemctl enable mysql

# Configuring post installation security script

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring post installation security script"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

mysql_secure_installation

# Configuring Supervisor

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Configuring Supervisor"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

systemctl daemon-reload

systemctl enable supervisor.service
systemctl start supervisor

# Updating package list

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Updating package list"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get -y update && apt-get -y upgrade && apt-get -y autoremove && apt-get -y autoclean

# Installing Certbot

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "> Installing Certbot"
echo "--------------------------------------------------------------------------------------------------------------------------------------------"

apt-get install -y certbot python3-certbot-nginx

echo "--------------------------------------------------------------------------------------------------------------------------------------------"
echo "Finished server setup for your Ubuntu machine and Thanks from FierceBengalTiger..."
echo "--------------------------------------------------------------------------------------------------------------------------------------------"
