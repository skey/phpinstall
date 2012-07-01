if [ -f /etc/php5/conf.d/gearman.ini ]
then
        echo "php gearman is exist"
else
	cd
	apt-get install  uuid-dev -y
	wget  https://launchpadlibrarian.net/51244438/gearmand-0.14.tar.gz
	tar xvzf gearmand-0.14.tar.gz
	cd  gearmand-0.14
	./configure 
	make 
	make install
	pecl install channel://pecl.php.net/gearman-0.7.0
	echo "extension=gearman.so" > /etc/php5/conf.d/gearman.ini 
fi
