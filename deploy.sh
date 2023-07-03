#!/bin/bash

git pull origin master

docker build -t document .

docker rm -f document

docker run -itd --restart always --name document -p 8085:80 document
