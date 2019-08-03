#!/bin/bash

set -o errexit

# Ignore apt-get update errors to avoid failing due to misbehaving repo;
# true errors would fail in the apt-get install phase
apt-get update || true

# install lxc for running the test suite
apt-get install -y liblxc1 lxc-dev lxc lxc-templates wget ca-certificates

cd /usr/local
# remove default circleci go
rm -rf go
# setup go 1.12.x
wget -O- https://storage.googleapis.com/golang/go1.12.7.linux-amd64.tar.gz| tar xfz -
ln -s /usr/local/go/bin/go /usr/bin/go