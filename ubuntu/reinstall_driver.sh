#!/bin/bash

sudo apt-get purge nvidia-*
sudo apt-get autoremove
sudo apt-get autoclean


sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

sudo ubuntu-drivers autoinstall
