`uninstall` requires an option:

  $ $TESTDIR/../bin/drip uninstall
  This command requires a definition argument.
  [1]

`uninstall` validates provided `package`:

  $ $TESTDIR/../bin/drip uninstall stow
  No available definition for stow. Suggested packages:
  => stow-1.3.3
  [1]

`uninstall` runs uninstall stuff:

  $ STOW_DEFINITIONS_PATH=$TESTDIR/fixtures $TESTDIR/../bin/drip uninstall example-0.0.0
  Package: example
  Version: 0.0.0
  => Uninstall

`uninstall` runs uninstall stuff (special case):

  $ $TESTDIR/../bin/drip uninstall ruby-1.9.3-p125
  No uninstall formula provided.
