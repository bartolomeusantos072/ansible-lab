#!/usr/bin/env bash

echo "Instalando Ansible"

sudo apt update
sudo apt install -y ansible

echo "Asnsible instalado"

cat <<EOT>> /etc/hosts
192.168.56.2 control-node
192.168.56.3 app001
192.168.56.4 db001

EOT