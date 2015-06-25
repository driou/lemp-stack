# A basic debian configuration with sources
FROM driou/debian-base
MAINTAINER Adrien Bourroux <a.bourroux@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
# Updating Package List
RUN apt-get update

# Installing Nginx package
RUN apt-get install -y nginx 
 
# Installing PHP Packages
RUN apt-get install -y php5-fpm	
RUN apt-get install -y php5-curl php5-gd php5-intl php5-json php5-mcrypt php5-mysqlnd php5-readline

# Installing Mysql Packages
RUN echo "mysql-server mysql-server/root_password password toor" | debconf-set-selections && \
echo "mysql-server mysql-server/root_password_again password toor" | debconf-set-selections 
RUN apt-get install -y mysql-server

