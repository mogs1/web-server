#!/bin/bash

sudo apt-get update && sudo apt-get install -y apache2

HOSTNAME=$(hostname)

echo "<html>
<head><title>Welcome</title></head>
<body>
<h1>Hello $HOSTNAME, welcome to my webserver</h1>
</body>
</html>" > /var/www/html/index.html

echo "starting with httpd(apache)"

sudo service apache2 start
sudo service apache2 restart
