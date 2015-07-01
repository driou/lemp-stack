# lemp-stack

## Intro 

Run a LEMP stack (Linux Nginx MySQL PHP-FPM) powered by Docker.

## Pre-requisites

Have a Docker environment ok.

To install Docker on your computer, please follow instructions [here](https://docs.docker.com/installation/) choosing your platform.

## Installation

git clone https://github.com/thelia/thelia

-> Dockerfile 			// to build container  
-> conf/nginx/sites-enabled/ 	// vhost definition  
-> conf/php5-fpm/ 		// php5 configuration  
-> src/ 			// documentroot   

## Build the container from GitHub repository

Clone this repository : 

```
git clone https//github.com/driou/lemp-stack
```

From root of the repository, build the image container :

```
docker build -t name-of-image-you-want . 
```

## Use 

Verify that port 80 is not used (check local WebServer apache2/nginx/...)

From root of the repository, run the container like this: 

Daemon mode :
docker run -d -p 80:80 -v $PWD/conf/php5-fpm:/etc/php5/fpm/ -v $PWD/conf/nginx/sites-enabled:/etc/nginx/sites-enabled -v $PWD/src:/usr/share/nginx/html/thelia/web/ driou/lemp-stack 


- direct bash with nsenter(https://github.com/jpetazzo/nsenter)

TO BE FIXED
To do when connected container is launch :

So TODO
- Fix user / groups rights
- tune mysql
- add tools (phpmyadmin, mailcatcher)
