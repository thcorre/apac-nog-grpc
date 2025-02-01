#!/bin/bash

curl -sL https://containerlab.dev/setup | sudo -E bash -s "all"

sudo bash -c "$(curl -sL https://get-gribic.kmrd.dev)"

sudo bash -c "$(curl -sL https://get-gnmic.openconfig.net)"

sudo bash -c "$(curl -sL https://get-gnoic.kmrd.dev)"

wget https://go.dev/dl/go1.22.11.linux-amd64.tar.gz

sudo rm -rf /usr/local/go

sudo tar -C /usr/local -xzf go1.22.11.linux-amd64.tar.gz

export PATH=$PATH:/usr/local/go/bin

git clone https://github.com/karimra/gnsic.git

cd gnsic

go build -ldflags="-s -w"

sudo cp gnsic /usr/local/bin/
