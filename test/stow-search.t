Search should return a list of available definitions:

  $ $TESTDIR/../bin/stow search
  ack-1.96
  ctags-5.8
  example-0.0.0
  geoip-1.4.8
  git-1.7.10
  imagemagick-6.7.5
  memcached-1.4.13
  mutt-1.5.21
  node-0.6.15
  python-2.7.3
  redis-2.4.10
  ruby-1.9.3-p0
  ruby-1.9.3-p125
  sphinx-2.0.4
  stow-1.3.3
  tmux-1.6
  vim-7.3.492

Search should return a message when no definitions found:

  $ STOW_DEFINITIONS_PATH=$TESTDIR/tmp $TESTDIR/../bin/stow search
  No definitions found.
  [1]
