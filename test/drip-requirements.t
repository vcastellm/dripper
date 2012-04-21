Validate the requirement of `git`:

  $ mkdir -p $TESTDIR/tmp
  $ touch $TESTDIR/tmp/stow
  $ chmod +x $TESTDIR/tmp/stow
  $ PATH="$TESTDIR/tmp:/usr/bin:/bin"
  $ $TESTDIR/../bin/drip update
  Dripper needs `git' installed on the system.
  
      drip install git-1.7.10
  
  [1]

Validate the requirement of `hg` in some definitions:

  $ mkdir -p $TESTDIR/tmp
  $ touch $TESTDIR/tmp/stow
  $ chmod +x $TESTDIR/tmp/stow
  $ PATH="$TESTDIR/tmp:/usr/bin:/bin"
  $ $TESTDIR/../bin/drip install vim-7.3.492
  Dripper needs `hg' installed on the system.
  [1]
