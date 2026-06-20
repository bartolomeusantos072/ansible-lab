#!/bin/sh

# Correção do nome para authorized_keys (com 'h')
cat <<EOT>> /home/vagrant/.ssh/authorized_keys
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH5nh1mXevPpz3ssuMc9gS6V0lX0I0ZMqOVAVnlGrhmI vagrant@control-node
EOT

# Garante as permissões corretas exigidas pelo SSH
chmod 600 /home/vagrant/.ssh/authorized_keys
chown vagrant:vagrant /home/vagrant/.ssh/authorized_keys