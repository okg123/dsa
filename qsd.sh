#!/bin/sh
sudo apt update
sudo apt install screen -y
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run
curl -fsSL https://code-server.dev/install.sh | sh
timeout 2s code-server
cd ~/.config/code-server
mv config.yaml llod
wget https://raw.githubusercontent.com/WhynotSir/tt/main/config.yaml
npm install -g localtunnel
code-server --bind-addr 127.0.0.1:8040 & lt --port 8040
while [ 1 ]; do
sleep 3
done
sleep 999
