Drip command without any argument:

  $ STOW_PATH=$TESTDIR/tmp $TESTDIR/../bin/drip
  usage: drip <command> [<args>]
  
  The most commonly used drip commands are:
  
     search     Search a definition
     list       List installed packages
     install    Install a definition
     uninstall  Uninstall a definition
     update     Fetch new version and definitions
     show       Show a definition
     info       Show definition info
     link       Link package
     unlink     Unlink package
     cleanup    Remove all sources
     path       Show package path
  
  See 'drip help <command>' for information on a specific command.

Unexisting command:

  $ STOW_PATH=$TESTDIR/tmp $TESTDIR/../bin/drip unexisting
  drip: no such command `unexisting'
  [1]
