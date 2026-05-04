#!/bin/bash

# Install Apache
sudo dnf install httpd -y

# Start Apache
sudo systemctl start httpd
sudo systemctl enable httpd

# Create clean HTML file (ONLY HTML, no commands)
cat <<EOF | sudo tee /var/www/html/index.html
<html>
<head>
<title>My Web App</title>
</head>
<body>
<h1>Welcome to My Simple Web App 🚀</h1>
<p>Deployed correctly using Shell Script</p>
</body>
</html>
EOF

# Restart Apache
sudo systemctl restart httpd
