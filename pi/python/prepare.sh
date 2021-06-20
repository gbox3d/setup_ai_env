#!/bin/sh -e
sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev 
mkdir temp

#가상환경 관리자를 쓰고싶따면 아래 코드의 주석을 해제한다. pi는 venv만 설치되어있기 때문에 activate 파일을 자동으로 만들어지지않는따.
#pip3 install virtualenv

PYTHON_VER=3.8.7

wget https://www.python.org/ftp/python/$PYTHON_VER/Python-$PYTHON_VER.tgz
mv Python-$PYTHON_VER.tgz ./temp

echo 'ready to install ' $PYTHON_VER



