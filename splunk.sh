#! /bin/sh
wget -O splunk-4.3.2-123586-linux-2.6-amd64.deb 'http://www.splunk.com/index.php/download_track?file=4.3.2/splunk/linux/splunk-4.3.2-123586-linux-2.6-amd64.deb&ac=&wget=true&name=wget&typed=releases'
dpkg -i splunk-4.3.2-123586-linux-2.6-amd64.deb 

