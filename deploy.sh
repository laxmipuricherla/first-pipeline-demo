#!/bin/bash

sudo dnf install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd

sudo bash -c 'cat > /var/www/html/index.html <<EOF
<html>
<head>
<title>My App</title>
</head>
<body>
<h1>Welcome to My Simple Web App 🚀</h1>
<p>This is my first Devops Jenkins Build Deployed correctly using Shell Script</p>
</body>
</html>
EOF'

sudo systemctl restart httpd
