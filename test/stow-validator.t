If no package is provided on install:

  $ $TESTDIR/../bin/stow install missing
  No available definition for missing.
  [1]

When package is provided but not version added:

  $ $TESTDIR/../bin/stow install git
  No available definition for git. Suggested packages:
  => git-1.7.10
