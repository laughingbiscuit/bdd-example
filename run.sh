#!/bin/sh

set -e

###
# TODO: make this a single command... curl https://laughingbiscuit.github.io/bdd | sh
###

#get framework 
rm -rf target/
git clone https://github.com/laughingbiscuit/bdd target/

# merge
cp -r features/ target/features/

# env
(cd target && docker build -t blah .)

# run tests
docker run -v$(pwd)/result:/home/result -i blah sh test.sh
