#!/bin/bash
set -e

# Check if INSTANCE_CONNECTION_NAME and PORT is provided as an argument
if [ $# -eq 1 ]; then
  echo "Usage: $0 <INSTANCE_CONNECTION_NAME> <PORT>"
  exit 1
fi

INSTANCE_CONNECTION_NAME=$1
PORT=$2

# Update and install wget
sudo apt update && sudo apt install -y wget

# Download and install Cloud SQL Proxy
wget https://dl.google.com/cloudsql/cloud_sql_proxy.linux.amd64 -O cloud_sql_proxy
chmod +x cloud_sql_proxy
sudo cp ./cloud_sql_proxy /usr/local/bin

# Create the systemd service unit file
cat <<EOF | sudo tee /lib/systemd/system/cloudsqlproxy.service
[Unit]
Description=Google Cloud Compute Engine SQL Proxy

[Service]
Type=simple
WorkingDirectory=/usr/local/bin
ExecStart=/usr/local/bin/cloud_sql_proxy -instances=$INSTANCE_CONNECTION_NAME=tcp:0.0.0.0:$PORT
Restart=always
StandardOutput=journal
User=root

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd, start and enable the Cloud SQL Auth Proxy service
sudo systemctl daemon-reload
sudo systemctl start cloudsqlproxy
sudo systemctl enable cloudsqlproxy

# Display the status of the Cloud SQL Proxy service
sudo systemctl status cloudsqlproxy

echo "Script has been completed"
