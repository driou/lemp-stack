# lemp-stack

## Intro 

Try to make a proper lemp stack with docker in order to run thelia on its

## Pre-requisites

Have a Docker environment ok.

To install Docker on your computer, please follow instructions [here](https://docs.docker.com/installation/) choosing your platform.

## Installation

git clone https://github.com/thelia/thelia

-> Dockerfile 			// to build container
-> conf/nginx/sites-enabled/ 	// vhost definition
-> conf/php5-fpm/ 		// php5 configuration
-> src/ 			// documentroot 

## Use 

Verify that port 80 is not used (local apache2/nginx/...)

From root of the repo run container : 

Daemon mode :
docker run -d -p 80:80 -v $PWD/conf/php5-fpm:/etc/php5/fpm/ -v $PWD/conf/nginx/sites-enabled:/etc/nginx/sites-enabled -v $PWD/src:/usr/share/nginx/html/thelia/web/ driou/lemp-stack 

- direct bash with nsenter(https://github.com/jpetazzo/nsenter)

TO BE FIXED
To do when connected container is launch :
chown -R www-data. src && chmod -R 755 src

So TODO
- Fix user / groups rights
- links to install docker env
- tune mysql
- add tools (phpmyadmin, mailcatcher)
