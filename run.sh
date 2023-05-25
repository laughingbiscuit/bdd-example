#!/bin/sh

set -e

#get framework 
rm -rf target/
git clone https://github.com/laughingbiscuit/bdd target/

# merge
cp -r features/ target/features/

# run tests
(cd target/ && bundle install && npm install && sh test.sh && npm run report)
