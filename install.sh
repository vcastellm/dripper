#!/usr/bin/env bash

set -e

if [ $(id -u) = "0" ]; then
  PREFIX=/usr/local
else
  PREFIX=$HOME/.packages
fi

BIN_PATH="$PREFIX/bin"
SHARE_PATH="$PREFIX/share/dripper/definitions"
LIBEXEC_PATH="$PREFIX/libexec"

mkdir -p $BIN_PATH
mkdir -p $SHARE_PATH
mkdir -p $LIBEXEC_PATH

for file in bin/*; do
  cp $file $BIN_PATH
done

for file in share/dripper/definitions/*; do
  cp $file $SHARE_PATH
done

for file in libexec/*; do
  cp $file $LIBEXEC_PATH
done

echo "Installed dripper at $PREFIX"

if [[ ! $(which drip) ]]; then
  echo "
Seems you still have not added '.packages' to the load path:

  if [ -d \$HOME/.packages ]; then
    export PATH=\"\$HOME/.packages/bin:\$PATH\"
  fi
"
fi
