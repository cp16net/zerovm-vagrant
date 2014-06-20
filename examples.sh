#!/bin/bash

echo 'print "Hello"' > hello.py
zvsh --zvm-image /vagrant/python.tar python @hello.py

cd /vagrant/zerovm-samples
make
