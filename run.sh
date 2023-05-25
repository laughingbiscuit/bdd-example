#!/bin/sh

set -e

#get framework 
rm -rf target/
git clone https://github.com/laughingbiscuit/bdd target/

# merge
cp -r features/ target/features/

# env
(cd target && docker build -t blah .)

# run tests
docker run -it blah sh test.sh
