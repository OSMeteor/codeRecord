###discuz
sudo mkdir Discuz_X3.2
cd Discuz_X3.2
sudo wget http://download.comsenz.com/DiscuzX/3.2/Discuz_X3.2_SC_UTF8.zip


unzip Discuz_X3.2_SC_UTF8.zip 


 wget http://download.comsenz.com/Discuz/7.2/Discuz_7.2_SC_UTF8.zip   

unzip Discuz_7.2_SC_UTF8.zip 
sudo chmod -R 777 Discuz_7.2 
sudo wget http://download.comsenz.com/DiscuzX/3.2/Discuz_X3.2_SC_UTF8.zip

http://download.comsenz.com/DiscuzX/3.2/Discuz_X3.2_SC_UTF8.zip

sudo apt-get install nginx -y
sudo service nginx start


sudo apt-get install php5 php5-cgi
sudo apt-get install spawn-fcgi

sudo spawn-fcgi -a 127.0.0.1 -p 9000 -C 10 -u www-data -f /usr/bin/php5-cgi


sudo apt-get install php5-fpm -y
sudo vi /etc/nginx/sites-available/default
/home/meteor/Discuz_X3.2/upload
sudo /etc/init.d/nginx reload

 

sudo apt-get install php5-mysql php5-gd -y
sudo service php5-fpm reload
sudo apt-cache search php5
sudo apt-get install mysql-server mysql-client -y
sudo apt-get install gedit -y
sudo vim /usr/share/nginx/html/phptest.php
sudo vim /usr/share/nginx/html/index.php
<?php phpinfo(); ?> 
sudo service nginx restart
sudo service nginx stop
sudo chmod  777 /etc/php5/cgi/php.ini
sudo vim /etc/php5/cgi/php.ini
sudo chmod 666 php.ini 
sudo php5-fpm stop
sudo /etc/init.d/mysql restart
