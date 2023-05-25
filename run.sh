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
docker run -v$(pwd)/target:/home/target -i blah sh test.sh
