 Asterisk developement + Vagrant  + Chef
=========================================

Setup enviroment for developement of [Asterisk](http://www.asterisk.org/).

Requiriment
-----------

* [VirtualBox](https://www.virtualbox.org)
* [Vagrant 1.2.x](http://vagrantup.com)
* Bundler Gem
* git


Use
===

* Clone this repo
* $ git submodule init
* $ git submodule update
* gem install bundler
* gem install librarian-chef

Do you need installed a nfs-server in you machine
  $ sudo aptitude install nfs-kernel-server nfs-common portmap

Run new machine:
  $ vagrant up

Access the machine
  $ vagrant ssh


Happy Hacking :)
