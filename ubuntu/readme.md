## 기본 인터프리터 설치

```sh
install_base.sh
```

## nvidia 드라이버 와 cuda 설치

그래픽드라이버가 설치 되지않는 상태를 확인해야함.  
드라이버 상태확인 다음과 같은 커멘드로한다.  

```sh
sudo lshw -c display
```

driver 이름이 다름과 같이 nouveau 라고 뜨면 나오면 드리이버가 아직설치되지않는 상태이니 이 방법을 사용할수 있다. 그렇지않다면 deb파일로 설치는 불가능하다.  
configuration: depth=32 driver=nouveau latency=0 resolution=1920,1080  


```sh
bash ./cuda_11_8.sh
bash ./cudnn__for_11_8.sh
```


예>
```
sudo apt install nvidia-driver-460 #2021 5.7 현재 최신 
```
## 우분투 기본 개발환경 셋업 

- install_nodejs.sh : 노드15버전 설치 스크립트  
- install_pyenv : 파이썬과 가상환경관리자 설치  


* cuda11_0.sh 실행이후 할일  
source ~/.bashrc  
nvcc -V 로 버전 확인  
다음과 같은 결과가 나오면 설치 성공 
```txt
nvcc: NVIDIA (R) Cuda compiler driver
Copyright (c) 2005-2020 NVIDIA Corporation
Built on Wed_Jul_22_19:09:09_PDT_2020
Cuda compilation tools, release 11.0, V11.0.221
Build cuda_11.0_bu.TC445_37.28845127_0

```

* install pytorch for cuda 11  
[파이토치 버전별 설치메뉴얼](https://pytorch.org/get-started/previous-versions/) 로 가서 설치커멘드를 찾는다.

cuda11 용 파이토치 17.1 버전 설치  
```sh
pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio==0.7.2 -f https://download.pytorch.org/whl/torch_stable.html
```

테스트 코드
```py
import torch
torch.rand(3).to('cuda')
```
