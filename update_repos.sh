#!/bin/bash

ROOT_DIR=$(pwd)

echo "Updating repos under $ROOT_DIR ..."

# Find repos and update ONLY master branch to the latest revision
for repo in "${ROOT_DIR}/"*; do
  if [[ -d "${repo}/.git" ]]; then
    cd "${repo}"
    echo "------------"
    echo "Found repo in ${repo}"

    git checkout master
    git pull

    cd $ROOT_DIR
  fi
done

echo "------------"
echo "Done!"

