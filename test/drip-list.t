Get `list` of installed packages returns error if no packages found:

  $ STOW_PATH=$TESTDIR/tmp/list
  $ rm -rf $STOW_PATH
  $ STOW_PATH=$TESTDIR/tmp/list $TESTDIR/../bin/drip list
  No packages found.
  [1]

Get `list` returns packages installed and status:

  $ STOW_PATH=$TESTDIR/tmp/list
  $ mkdir -p $STOW_PATH/not-linked
  $ mkdir -p $STOW_PATH/linked
  $ touch $STOW_PATH/.stow_linked
  $ STOW_PATH=$TESTDIR/tmp/list $TESTDIR/../bin/drip list
  linked
  not-linked (Not linked)
