#!/bin/bash
cd ~
wget http://packages.zerovm.org/zerovm-samples/python.tar

echo 'print "Hello"' > hello.py
zvsh --zvm-image ~/python.tar python @hello.py

cd /vagrant/zerovm-samples
make
