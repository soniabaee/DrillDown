#!/bin/bash

PRTRAINED_URL=www.cs.virginia.edu/~ft3ex/data/drilldown/pretrained.zip

mkdir data/caches/

echo "Downloading pretrained model ..."
wget $PRTRAINED_URL -O pretrained.zip
echo "Unzipping..."
unzip -q pretrained.zip -d data/caches/

rm pretrained.zip