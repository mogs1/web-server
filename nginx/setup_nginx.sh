#!/bin/bash

sudo apt-get update && sudo apt-get install -y nginx

HOSTNAME=$(hostname)

echo "<html>
<head><title>Welcome</title></head>
<body>
<h1>Hello $HOSTNAME, welcome to my nginx webserver</h1>
</body>
</html>" > /usr/share/nginx/html/setup.html

sudo service nginx start

echo "Starting nginx server"