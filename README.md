# lemp-stack

Try to make a proper lemp stack with docker in order to run thelia on its

Verify that port 80 is not used (local apache2/nginx/...)

run container : 
docker run -t -i -p 81:80 -v $PWD/conf/php5-fpm:/etc/php5/fpm/ -v $PWD/conf/nginx/sites-enabled:/etc/nginx/sites-enabled -v $PWD/src:/



To do when connected to container :
service nginx start && service php5-fpm start


To do when connected to container :

service nginx start && service php5-fpm start 

chown -R www-data. /usr/share/nginx/html/ && chmod -R 755 /usr/share/nginx/html/


So TODO
- Add MySQL
- Launch services 
- Fix user / groups rights

