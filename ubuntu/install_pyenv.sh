#!/bin/sh -e

# virtualenvwrapper 설치 
sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libssl-dev libsqlite3-dev libffi-dev curl file git python3-pip make build-essential
sudo pip3 install virtualenvwrapper

#pyenv 설치 
curl https://pyenv.run | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc
source ~/.bashrc

#21년현재 텐서플로우와 가장 궁합이 좋은 버전 설치 
pyenv install 3.7.7

#파이썬 3를 디폴트로 사용하도록 합니다. 변경된 가상환경에 따라 python 버전이 올바로 바뀌게 하려면 필요한 작업입니다. 
sudo apt install python-is-python3