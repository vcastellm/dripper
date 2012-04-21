Search should return a list of available definitions:

  $ $TESTDIR/../bin/drip search
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
  ruby-1.9.3-p194
  sphinx-2.0.4
  stow-1.3.3
  tmux-1.6
  vim-7.3.492

Search should allow filtering:

  $ $TESTDIR/../bin/drip search ruby
  ruby-1.9.3-p0
  ruby-1.9.3-p125
  ruby-1.9.3-p194

Search should allow search by partial name:

  $ $TESTDIR/../bin/drip search t
  ctags-5.8
  git-1.7.10
  mutt-1.5.21
  python-2.7.3
  stow-1.3.3
  tmux-1.6

Search should return a message when no definitions found:

  $ rm -rf $TESTDIR/tmp
  $ mkdir -p $TESTDIR/tmp
  $ STOW_DEFINITIONS_PATH=$TESTDIR/tmp $TESTDIR/../bin/drip search
  No definitions found.
  [1]

Search should return an error when STOW_DEFINITIONS_PATH not found:

  $ STOW_DEFINITIONS_PATH=$TESTDIR/unexisting $TESTDIR/../bin/drip search
  Provided STOW_DEFINITIONS_PATH does not exist.
  [1]
