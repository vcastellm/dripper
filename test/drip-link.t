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

  $ touch $TESTDIR/tmp/.git-1.7.10
  $ STOW_PATH=$TESTDIR/tmp $TESTDIR/../bin/drip link git-1.7.10
  git-1.7.10 already linked.
  [1]
  $ rm $TESTDIR/tmp/.git-1.7.10
