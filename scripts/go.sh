#!/bin/bash

# Install source control
apt-get install -y git-core subversion bzr mercurial

# Download GODEB binar
mkdir /tmp/godeb
cd /tmp/godeb
wget https://godeb.s3.amazonaws.com/godeb-amd64.tar.gz
tar xvzf godeb-amd64.tar.gz
chmod +x godeb
mv godeb /usr/local/bin/godeb

# Install Go
godeb install

# Setup GOPATH
mkdir /home/vagrant/gocode
mkdir /home/vagrant/gocode/{pkg,bin,src}
chown -R vagrant /home/vagrant/gocode
echo 'export GOPATH=/home/vagrant/gocode' >> /home/vagrant/.bashrc
echo 'export PATH=$PATH:$GOPATH/bin' >> /home/vagrant/.bashrc
