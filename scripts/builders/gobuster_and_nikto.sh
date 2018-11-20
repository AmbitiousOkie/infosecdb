#!/bin/bash
apt-get update
apt-get -y install git golang-go nikto
cd /root/
git clone https://github.com/OJ/gobuster.git
cd /root/gobuster
export GOPATH=/root/
export GOBIN=/root/gobin
mkdir /root/gobin
go get && go build
nikto -update
cd /root/gobin
wget https://github.com/daviddias/node-dirbuster/blob/master/lists/directory-list-2.3-big.txt






./gobuster -u https://demo.specialtymonitor.com -w directory-list-2.3-big.txt -k -r -l -a "True Digital Security"

