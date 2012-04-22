`install` requires an option:

  $ $TESTDIR/../bin/drip install
  This command requires a definition argument.
  [1]

`install` validates provided `package`:

  $ $TESTDIR/../bin/drip install stow
  No available definition for stow. Suggested packages:
  => stow-1.3.3
  [1]

`install` runs install stuff:

  $ STOW_DEFINITIONS_PATH=$TESTDIR/fixtures $TESTDIR/../bin/drip install example-0.0.0
  Package: example
  Version: 0.0.0
  => Install
