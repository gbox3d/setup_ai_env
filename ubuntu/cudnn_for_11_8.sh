#!/bin/bash

# cudnn 압축 해제 및 설치
tar -xvf cudnn-linux-x86_64-8.9.1.23_cuda11-archive.tar.xz

sudo cp ./cudnn-linux-x86_64-8.9.1.23_cuda11-archive/include/cudnn*.h /usr/local/cuda-11.8/include
sudo cp -P ./cudnn-linux-x86_64-8.9.1.23_cuda11-archive/lib/libcudnn* /usr/local/cuda-11.8/lib64/
sudo chmod a+r /usr/local/cuda-11.8/include/cudnn*.h /usr/local/cuda-11.8/lib64/libcudnn*

# CUDA 및 cuDNN 설치 확인
nvcc --version
# cuDNN 확인은 별도의 프로그램 또는 샘플 코드를 실행하여 확인해야 합니다.
