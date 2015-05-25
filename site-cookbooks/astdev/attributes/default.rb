#
# Author:: Rodrigo Ramírez Norambuena (<decipher.hk@gmail.com>)
# Cookbook Name:: astdev
# Attributes:: default
#

# user
default['astdev']['user'] = "vagrant"

# repository astdev
default['astdev']['repository'] = "http://gerrit.asterisk.org/asterisk"
default['astdev']['repo_path'] = "/vagrant/asterisk"
#default['astdev']['repo_path'] = "/home/#{default['astdev']['user']}/asterisk"
default['astdev']['branch'] = "master"

# packages

if platform?("ubuntu", "debian")
  packages = %w{
    aptitude libvpb-dev
  }
  # add here libvpb-dev for quiet install
end
default['astdev']['packages'] = packages
