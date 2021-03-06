#!/bin/bash
curl https://releases.rancher.com/install-docker/19.03.sh | sh 
usermod -aG docker root
apt-get install git -y
curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
cd /
cd etc
git clone https://github.com/BrunoSantos88/prometheus.git
cd prometheus/
docker-compose up