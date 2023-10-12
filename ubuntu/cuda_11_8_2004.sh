#!/bin/bash

# NVIDIA CUDA와 cuDNN 설치 스크립트

# CUDA 설치
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/11.8.0/local_installers/cuda-repo-ubuntu2004-11-8-local_11.8.0-520.61.05-1_amd64.deb
sudo dpkg -i cuda-repo-ubuntu2004-11-8-local_11.8.0-520.61.05-1_amd64.deb
sudo cp /var/cuda-repo-ubuntu2004-11-8-local/cuda-*-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get -y install cuda

# CUDA 환경 변수 설정
echo 'export PATH=/usr/local/cuda-11.8/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.8/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
echo 'export CUDA_HOME=/usr/local/cuda-11.8' >> ~/.bashrc
source ~/.bashrc

# cuDNN 설치
# cuDNN 설치는 수동으로 진행해야 합니다. NVIDIA 웹사이트에서 해당하는 버전을 다운로드 받아 설치해 주세요.

# CUDA 및 cuDNN 설치 확인
nvcc --version
# cuDNN 확인은 별도의 프로그램 또는 샘플 코드를 실행하여 확인해야 합니다.
