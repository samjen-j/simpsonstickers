#!/bin/bash

curl --silent --location https://rpm.nodesource.com/setup_14.x | sudo bash -
npm install
sudo yum install -y nodejs

DIR="/home/ec2-user/simpsons-app"
if [ -d "$DIR" ]; then
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi