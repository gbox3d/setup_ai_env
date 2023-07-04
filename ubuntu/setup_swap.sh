#!/bin/bash

# 첫 번째 커맨드라인 인자를 스왑 파일의 크기로 사용
SWAP_SIZE=$1

# 스왑 파일 비활성화
sudo swapoff /swapfile

# 기존 스왑 파일 삭제
sudo rm /swapfile

# 입력받은 크기의 스왑 파일 생성
sudo fallocate -l ${SWAP_SIZE}G /swapfile

# 스왑 파일 권한 설정
sudo chmod 600 /swapfile

# 스왑 영역으로 파일 설정
sudo mkswap /swapfile

# 시스템에 스왑 파일 등록
sudo swapon /swapfile

# /etc/fstab 파일에 스왑 파일 정보 확인
if ! grep -q "/swapfile" /etc/fstab; then
  # 스왑 파일 정보가 없으면 추가
  echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
fi

# 새 스왑 공간 확인
free -h
