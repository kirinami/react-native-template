#!/usr/bin/env bash

set -e

pushd android
  ./gradlew clean
popd

pushd ios
  pod install --repo-update
popd
