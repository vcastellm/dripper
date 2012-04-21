#!/usr/bin/env bash

set -e

if [ $(id -u) = "0" ]; then
  DRIPPER_ROOT=/usr/local
else
  DRIPPER_ROOT=$HOME/.packages
fi

BIN_PATH="$DRIPPER_ROOT/bin"
SHARE_PATH="$DRIPPER_ROOT/share/dripper/definitions"
LIBEXEC_PATH="$DRIPPER_ROOT/libexec"

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

echo "Installed dripper at $DRIPPER_ROOT"

if [[ ! $(which drip) ]]; then
  echo "
Seems you still have not added '.packages' to the load path:

  DRIPPER_ROOT=$DRIPPER_ROOT
  if [ -d \$DRIPPER_ROOT ]; then
    export PATH=\"\$DRIPPER_ROOT/bin:\$PATH\"
  fi
"
fi
