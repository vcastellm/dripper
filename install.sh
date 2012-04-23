#!/usr/bin/env bash

set -e

if [ $(id -u) = "0" ]; then
  DEFAULT_DRIPPER_ROOT=/usr/local
else
  DEFAULT_DRIPPER_ROOT=$HOME/.packages
fi

if [ ! -n "${DRIPPER_ROOT}" ]; then
  DRIPPER_ROOT=$DEFAULT_DRIPPER_ROOT
fi

BIN_PATH="$DRIPPER_ROOT/bin"
SHARE_PATH="$DRIPPER_ROOT/share/dripper/definitions"
LIBEXEC_PATH="$DRIPPER_ROOT/libexec"

mkdir -p $BIN_PATH
mkdir -p $SHARE_PATH
mkdir -p $LIBEXEC_PATH

for file in $PWD/bin/*; do
  cp $file $BIN_PATH
done

for file in $PWD/share/dripper/definitions/*; do
  cp $file $SHARE_PATH
done

for file in $PWD/libexec/*; do
  cp $file $LIBEXEC_PATH
done

echo "Installed dripper at $DRIPPER_ROOT"

# Set a default user path so we show the user some instructions in
# case he didn't install Dripper in the default location.
PATH="$DEFAULT_DRIPPER_ROOT:/usr/bin:/bin"

if [[ ! $(which drip) ]]; then
  echo "
Seems you still have not added DRIPPER_ROOT to the load path. Please
update your \`.bashrc' with the following settings:

  DRIPPER_ROOT=$DRIPPER_ROOT
  if [ -d \$DRIPPER_ROOT ]; then
    export PATH=\"\$DRIPPER_ROOT/bin:\$PATH\"
  fi
"
fi
