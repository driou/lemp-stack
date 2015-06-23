# A basic debian configuration with sources
FROM driou/debian-base
MAINTAINER Adrien Bourroux <a.bourroux@gmail.com>

# Updating Package List
RUN apt-get update

# Installing Nginx package
RUN apt-get install -y nginx 
 
# Installing PHP Packages
RUN apt-get install -y php5-fpm	
RUN apt-get install -y php5-mysql php5-curl php5-gd php5-intl php5-json php5-mcrypt php5-mysqlnd php5-readline
