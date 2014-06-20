#!/bin/bash

sudo sed -i 's%http://us.archive.ubuntu.com%http://mirror.rackspace.com%g' /etc/apt/sources.list
sudo su -c 'echo "deb http://packages.zerovm.org/apt/ubuntu/ precise main" > /etc/apt/sources.list.d/zerovm-precise.list'

wget -O- http://packages.zerovm.org/apt/ubuntu/zerovm.pkg.key | sudo apt-key add -

sudo apt-get -y update
sudo apt-get -y install zerovm
sudo apt-get -y install zerovm-cli
sudo apt-get -y install zerovm-dev
sudo apt-get -y install gcc-4.4.3-zerovm
sudo apt-get -y install make automake autoconf git emacs23-nox

sudo apt-get -y install software-properties-common python-software-properties
sudo add-apt-repository -y  ppa:zerovm-ci/zerovm-latest
sudo apt-get -y install zerovm-cli

sudo apt-get -y install python-pip
sudo easy_install --upgrade pip
sudo pip install virtualenvwrapper
echo "source /usr/local/bin/virtualenvwrapper.sh" >> /home/vagrant/.bashrc
cat /vagrant/secrets.txt >> /home/vagrant/.bashrc
