#!/bin/bash

curl -sL https://containerlab.dev/setup | sudo -E bash -s "all"

sudo bash -c "$(curl -sL https://get-gribic.kmrd.dev)"

sudo bash -c "$(curl -sL https://get-gnmic.openconfig.net)"

sudo bash -c "$(curl -sL https://get-gnoic.kmrd.dev)"

git clone https://github.com/karimra/gnsic.git

cd gnsic

go build -ldflags="-s -w"

sudo cp gnsic /usr/local/bin/
