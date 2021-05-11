#!/usr/bin/env bash

set -e

if [[ "$1" == "--clean" ]]; then
  echo "clean"
  bash sys/clean.sh
fi

yarn install

bash sys/link.sh
