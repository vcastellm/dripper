Get `info` validates provided `package`:

  $ $TESTDIR/../bin/drip info example
  No available definition for example. Suggested packages:
  => example-0.0.0
  [1]

Get info of a package:

  $ $TESTDIR/../bin/drip info example-0.0.0
  Package: example
  Version: 0.0.0
  => Info

Get info of a package which does not have info:

  $ $TESTDIR/../bin/drip info git-1.7.10
  No info provided for git-1.7.10.
