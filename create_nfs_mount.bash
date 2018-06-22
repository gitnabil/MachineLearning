#!/bin/bash

# Install nfs-utils
sudo apt-get install nfs-common -y

# Create ML directory
sudo mkdir /ml-demo-cv

# Connect it to the nfs volume
sudo mount -t nfs -o rw,hard,nointr,rsize=32768,wsize=32768,bg,nfsvers=3,tcp 172.16.51.52:/machinelearning-east /ml-demo-cv
