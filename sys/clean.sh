#!/usr/bin/env bash

set -e

# Wipe iOS
rm -rf ios/build
killall Xcode || true
xcrun -k
pushd ios > /dev/null
xcodebuild -alltargets clean
popd > /dev/null
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
rm -rf ~/Library/Developer/Xcode/DerivedData/
rm -rf ~/Library/Caches/com.apple.dt.Xcode/
rm -rf ios/Pods
rm -rf ios/Podfile.lock
pod cache clean --all
rm -rf ~/.cocoapods

# Wipe Android
rm -rf $HOME/.gradle
rm -rf android/.gradle
rm -rf android/build
rm -rf android/app/build

# Wipe Cache
watchman watch-del-all
rm -rf $TMPDIR/react-*
rm -rf $TMPDIR/metro-*
rm -rf $TMPDIR/haste-map-*

# Wipe Node
rm -rf node_modules
rm -rf yarn.lock
yarn cache clean
npm cache verify
