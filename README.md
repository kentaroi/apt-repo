apt-repo
========

A simple command to create a local apt repository.

Installing apt-repo
-------------------
First of all, make sure that `apt-utils` package is installed.

    $ sudo apt-get update
    $ sudo apt-get install -y apt-utils

Then, you can install `apt-repo`, as follows:

    $ git clone git://github.com/kentaroi/apt-repo.git
    $ cd apt-repo
    $ sudo make install


Using apt-repo
--------------
Create a directory to store deb packages.

    $ mkdir -p /path/to/repo

Add the following line to `/etc/apt/sources.list` file

    deb file:/path/to/repo/ ./

Store deb packages in the directory.


Run `apt-repo` to create or update a local apt repository at the path (the current directory by default).

    $ # Create or update a repository at current directory
    $ apt-repo

    $ # Create or update a repository at `/path/to/repo`
    $ apt-repo /path/to/repo

Then run `apt-get update` to update the apt indexes of available packages.

    $ sudo apt-get update

