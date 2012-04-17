Stow Manager
============

Stow manager is a collection of definitions to install software
packages with [stow], the GNU package manager.


Install
-------

Clone the repository and run the install script:

    git clone git://github.com/fesplugas/stow-manager.git
    cd stow-manager
    ./install.sh

If you install `stow-manager` in single user mode add the following
lines to your `.bashrc`:

    if [ -d $HOME/.packages ]; then
      export PATH="$HOME/.packages/bin:$PATH"
    fi

Now you can instal `stow` using `stow-manager`:

    stow install stow-1.3.3


Uninstall
---------

If you need to uninstall `stow-manager`:

    stow unlink --all
    rm -rf $HOME/.packages/stow


Usage
-----

Common operations:

    stow install redis-2.4.10
    stow uninstall redis-2.4.10
    stow unlink redis-2.4.10
    stow link redis-2.4.10
    stow path redis-2.4.10
    stow update

You can get a list of all available commands by running `stow`.


Requirements
------------

You'll need `git` to be able to update `stow-manager`:

    stow install git-1.7.1.0

Some `definitions` require `hg`. At this moment the best thing you can
do to install Mercurial is by using `pip`:

    sudo easy_install pip
    sudo pip install mercurial


Tips & Tricks
-------------

Imagine you have different projects with different requirements and
want to load a different `ruby` version for each one. Familiar, right?

    # Redefine `cd` to load environment variables from a `.env` file
    # if exists.
    function cd {
      builtin cd "$@"
      if [ -e ./.env ] ; then
        source ./.env
      fi
    }

Now you can add a `ruby` to the load path by running:

    stow path ruby-1.9.3-p125 > .env


Conventions
-----------

- Sources are downloaded into `/usr/local/src` or `$HOME/.packages/src`.
- Packages are compiled into `/usr/local/stow` or `$HOME/.packages/stow`.


TODO and Whishlist
------------------

- Package and install from url.
- Do not download a package if already in `$SRC_PATH`.
- Uninstaller.
- Detect already installed `packages`.


Acknowledgements
----------------

Thanks to [Homebrew], it's an awesome tool. As and [stow] user I
always wanted to do something similar and [Homebrew] has inspired
many of the commands used by `stow-manager`.

Thanks to [ruby-build] and [rbenv], project organization has been
heavily inspired by them. Also some "helpers" used in [stow-helper]
have been copied from [rbenv].


[stow]: http://www.gnu.org/s/stow/
[ubuntu]: http://www.ubuntu.com/
[redhat]: http://www.redhat.com/
[Homebrew]: https://github.com/mxcl/homebrew
[ruby-build]: https://github.com/sstephenson/ruby-build
[rbenv]: https://github.com/sstephenson/rbenv
[stow-helper]: https://github.com/fesplugas/stow-manager/blob/master/libexec/stow-helper
