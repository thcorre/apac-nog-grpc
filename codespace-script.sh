#!/bin/bash

sudo bash -c "$(curl -sL https://get-gribic.kmrd.dev)"

git clone https://github.com/karimra/gnsic.git

cd gnsic

go build -ldflags="-s -w"

sudo cp gnsic /usr/local/bin/
