#
# Cookbook Name:: astdev
# Recipe:: setup
#

astdev = node['astdev']

# Git
include_recipe "astdev::git"

# packages
include_recipe "astdev::packages"

# User configs
include_recipe "astdev::user"
