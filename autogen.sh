#!/bin/bash -e

[ -d .git ] && [ -d tor ] && [ -d leveldb ] && [ -d db4.8 ] || \
  { echo "Please run this command from the root of the TokenPay repository." && exit 1; }

set -e
git submodule update --init --recursive


pushd tor
./autogen.sh
popd
