Create `link` validates provided `package`:

  $ STOW_DEFINITIONS_PATH=$TESTDIR/fixtures $TESTDIR/../bin/drip info example
  No available definition for example. Suggested packages:
  => example-0.0.0
  [1]

Create `link` validates package has been installed:

  $ STOW_DEFINITIONS_PATH=$TESTDIR/fixtures $TESTDIR/../bin/drip link example-0.0.0
  Package: example
  Version: 0.0.0
  Error: example-0.0.0 is not installed.
  [1]

Create `link` does not link an already linked package:

  $ STOW_FILE_CONTROL=$TESTDIR/tmp/.stow_git-1.7.10
  $ touch $STOW_FILE_CONTROL
  $ mkdir -p $TESTDIR/tmp/git-1.7.10
  $ STOW_PATH=$TESTDIR/tmp $TESTDIR/../bin/drip link git-1.7.10
  git-1.7.10 already linked.
  $ rm $STOW_FILE_CONTROL

Create `link` should detect similar linked definition:

  $ DRIPPER_ROOT=$TESTDIR/fixtures $TESTDIR/../bin/drip link ruby-1.9.3-p125
  ruby-1.9.3-p125 already linked.
