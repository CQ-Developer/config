#!/bin/bash
export http_proxy=http://192.168.0.1:10810
export https_proxy=http://192.168.0.1:10810
curl -s "https://get.sdkman.io" | bash
source ~/.bashrc
sdk install java 8.0.472-zulu
sdk install maven 3.8.9
rm -f init.sh