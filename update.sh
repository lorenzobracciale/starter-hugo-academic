#!/bin/bash

if [ -z "$1" ]; then
  echo "You need to specify the changes to commit as an argument"
  exit 1
else
  git add -A
  git commit -am "$1"
  git push

  hugo

  cd public
  git add -A
  git commit -am "$1"
  git push

  cd ..
fi
# update publications
# go to https://www.scopus.com/authid/detail.uri?authorId=24722537100 and export .bib
# then import into HUGO as 
# academic import --bibtex my_publications.bib
