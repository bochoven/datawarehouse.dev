#!/bin/sh

echo "**** Bootstrapping datawarehouse VM ****"

vagrant up

echo "Get the latest datawarehouse from git"

git clone https://github.com/bochoven/datawarehouse.git datawarehouse

echo "Add config for datawarehouse"

cp config.php datawarehouse

echo "Check if this VM is registered in /etc/hosts"

grep datawarehouse.dev /etc/hosts || echo 'Add 192.168.56.102 datawarehouse.dev to /etc/hosts'