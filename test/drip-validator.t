If no package is provided on install:

  $ $TESTDIR/../bin/drip install missing
  No available definition for missing.
  [1]

When package is provided but not version added:

  $ $TESTDIR/../bin/drip install ruby
  No available definition for ruby. Suggested packages:
  => ruby-1.9.3-p0
  => ruby-1.9.3-p125
  => ruby-1.9.3-p194
  [1]
