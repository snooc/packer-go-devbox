#!/bin/bash

# Add go repository
apt-get install -y python-software-properties
add-apt-repository -y ppa:gophers/go
apt-get update

# Install go
apt-get install -y golang-stable

# Install source control
apt-get install -y git-core subversion bzr

# Setup GOPATH
mkdir /home/vagrant/gocode
mkdir /home/vagrant/gocode/{pkg,bin,src}
chown -R vagrant /home/vagrant/gocode
echo 'export GOPATH=/home/vagrant/gocode' >> /home/vagrant/.bashrc
