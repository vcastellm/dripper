Create `link` validates provided `package`:

  $ $TESTDIR/../bin/stow info example
  No available definition for example. Suggested packages:
  => example-0.0.0
  [1]

Create `link` validates package has been installed:

  $ $TESTDIR/../bin/stow link example-0.0.0
  Package: example
  Version: 0.0.0
  Error: example-0.0.0 is not installed.
  [1]
