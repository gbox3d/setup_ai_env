#!/bin/bash

# cudnn 설치 파일명 설정
cudnn_file=${1:-"cudnn-linux-x86_64-8.9.1.23_cuda11-archive.tar.xz"}

# cudnn 압축 해제 및 설치
tar -xf $cudnn_file -C /tmp
sudo cp /tmp/cuda/include/cudnn*.h /usr/local/cuda-11.8/include
sudo cp -P /tmp/cuda/lib64/libcudnn* /usr/local/cuda-11.8/lib64/
sudo chmod a+r /usr/local/cuda-11.8/include/cudnn*.h /usr/local/cuda-11.8/lib64/libcudnn*

# CUDA 및 cuDNN 설치 확인
nvcc --version
# cuDNN 확인은 별도의 프로그램 또는 샘플 코드를 실행하여 확인해야 합니다.
