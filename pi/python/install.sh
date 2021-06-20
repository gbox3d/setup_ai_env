#!/bin/sh -e

PYTHON_VER=3.8.7

cd temp/
tar xzvf Python-$PYTHON_VER.tgz

cd Python-$PYTHON_VER
./configure --enable-optimizations
make
sudo make install