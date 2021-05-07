#!/bin/sh -e
# cuda11.0  update 1
wget https://developer.download.nvidia.com/compute/cuda/11.0.3/local_installers/cuda_11.0.3_450.51.06_linux.run
sudo sh cuda_11.0.3_450.51.06_linux.run

echo 'export PATH=$PATH:/usr/local/cuda-11.0/bin' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda-11.0/lib64' >> ~/.bashrc
echo 'export CUDADIR=/usr/local/cuda-11.0' >> ~/.bashrc

#source ~/.bashrc 
# nvcc -V 로 버전확인 