#!/bin/bash

if [[ $1 == "--clean" ]]; then
  echo "Cleaning house"
  rm -rf .??????????????* README
fi

bundle exec sequelizer config
bundle exec conceptql knit README.md.cql
doctoc --github --notitle README.md
mdl README.md
