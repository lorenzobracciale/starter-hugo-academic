#!/bin/bash -x

if [ -z "$1" ]; then
  echo "You need to specify the changes to commit as an argument"
  exit 1
else
  hugo
  git add . 
  git add public
  git commit -am "$1"
  git push
  git add . 
  cd public
  git add .
  git commit -am "$1"
  git push
fi
# update publications
# go to https://www.scopus.com/authid/detail.uri?authorId=24722537100 and export .bib
# then import into HUGO as 
# academic import --bibtex my_publications.bib

# in case of problems
# hugo mod clean
# hugo mod get -u ./...
