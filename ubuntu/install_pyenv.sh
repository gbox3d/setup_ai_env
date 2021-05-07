#!/bin/sh -e

sudo apt update

#base module for opencv
sudo apt install python3-tk -y
#image
sudo apt-get install libjpeg-dev libtiff5-dev libpng-dev -y 
#movie codec
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev -y


# virtualenvwrapper 설치 
sudo apt install -y liblzma-dev python3-pip 
sudo apt install -y zlib1g-dev libbz2-dev libreadline-dev libssl-dev libsqlite3-dev libffi-dev curl file git python3-pip make build-essential
sudo pip3 install virtualenvwrapper

#파이썬 3를 디폴트로 사용하도록 합니다. 변경된 가상환경에 따라 python 버전이 올바로 바뀌게 하려면 필요한 작업입니다. 
sudo apt install python-is-python3

#pyenv 설치 
curl https://pyenv.run | bash
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# source는 수동으로 실행시켜야한다.
# source ~/.bashrc

#21년현재 텐서플로우와 가장 궁합이 좋은 버전 설치 
# pyenv install 3.7.7

#pytorch 환경용 
# pyenv install 3.8.10

