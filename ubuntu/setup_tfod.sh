#!/bin/sh -e
git clone https://github.com/tensorflow/models ~/tfod_models

sudo apt-get install protobuf-compiler -y

cd ~/tfod_models/research 

protoc object_detection/protos/*.proto --python_out=. 
cp object_detection/packages/tf2/setup.py . 
python -m pip install . 

#설치확인 
python ~/tfod_models/research/object_detection/builders/model_builder_tf2_test.py
