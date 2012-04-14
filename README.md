Dripper
=======

Dripper is a collection of scripts (drips) to install software packages
with [stow].

Install [stow] on [Ubuntu] by running:

    sudo apt-get install stow

Install [stow] on [RedHat] based distros by running:

    sudo yum install stow


Install
-------

Clone the repository and run the install script:

    git clone git://github.com/fesplugas/dripper.git
    cd dripper
    ./install.sh

If you need to uninstall `dripper`:

    rm -rf $HOME/.packages
    rm -rf /usr/local


Usage
-----

Install a `drip`:

    drip install redis

Uninstall a `drip`:

    drip uninstall redis

Disable a `drip`:

    drip unlink redis

Update the system:

    drip update

You can get a list of all available commands by running `drip`.


Requirements
------------

You'll need `git` to be able to update drips:

    drip install git

Some `stows` require `hg`. At this moment the best thing you can do
to install Mercurial is by using `pip`:

    sudo easy_install pip
    sudo pip install mercurial


Conventions
-----------

Sources are downloaded into the `/tmp` folder and software is installed
under `/usr/local/stow` or `$HOME/.packages/stow`.


TODO and Whishlist
------------------

- Package and install from url.
- Store downloaded packages and use them instead when needed.
- Task to remove downloaded packages.
- Versions of `drips`.


Acknowledgements
----------------

Thanks to [Homebrew], it's an awesome tool. As and [stow] user I
always wanted to do something similar and [Homebrew] has inspired
many of the commands used by `drip`.

Thanks to [ruby-build] and [rbenv], project organization has been
heavily inspired by them. Also some "helpers" used in [drip-helper]
have been copied from [rbenv].


[stow]: http://www.gnu.org/s/stow/
[ubuntu]: http://www.ubuntu.com/
[redhat]: http://www.redhat.com/
[Homebrew]: https://github.com/mxcl/homebrew
[ruby-build]: https://github.com/sstephenson/ruby-build
[rbenv]: https://github.com/sstephenson/rbenv
[drip-helper]: https://github.com/fesplugas/dripper/blob/master/libexec/drip-helper
