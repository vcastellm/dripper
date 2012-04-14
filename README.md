Dripper
=======

Dripper is a collection of scripts to install software packages with
[stow].

You can install [stow] on [Ubuntu] by running:

    sudo apt-get -y install stow

You can install [stow] on [RedHat] based distros by running:

    sudo yum -y install stow


Installing
----------

Clone the stow repository:

    git clone git://github.com/fesplugas/dripper.git

Install:

    cd dripper
    ./install.sh


Uninstalling
------------

Remove `/usr/local` or `$HOME/.packages` folder.


Available Commands
------------------

Get a list of all available commands by running `drip`.


Requirements
------------

Some `stows` require `hg`. You can install it using pip:

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


[stow]: http://www.gnu.org/s/stow/
[ubuntu]: http://www.ubuntu.com/
[redhat]: http://www.redhat.com/
