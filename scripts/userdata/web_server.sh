#!/bin/bash

# 1. Update and Install Apache
echo "Starting Setup..."
sudo apt update -y > /dev/null
sudo apt install apache2 -y > /dev/null
sudo systemctl start apache2
sudo systemctl enable apache2

   
cat  <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html> 
<head>
    <title>AWS Optimization Status</title>
    <style>
        body { font-family: sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; background: #f0f2f5; }
        .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); text-align: center; width: 350px; border-top: 4px solid #FF9900; }
        h2 { margin: 0 0 10px; color: #333; }
        .status { background: #e6fffa; color: #047481; padding: 8px; border-radius: 4px; font-weight: bold; margin: 15px 0; }
        .footer { font-size: 12px; color: #666; margin-top: 20px; }
    </style>
</head>
<body>
    <div class="card">
        <h2>Cost Framework</h2>
        <p>System is online and optimized.</p>
        <div class="status">● Active: EC2 Instance</div>
        <div class="footer">Project: Cost-Opt-Framework<br>Managed by DevOps Team</div>
    </div>
</body>
</html>
EOF

# 3. Restart Apache to serve the new file
sudo systemctl restart apache2