#
# Cookbook Name:: astdev
# Recipe:: git
#
astdev = node['astdev']

include_recipe "git"

# Get code of Asterisk from git repository
git astdev['repo_path'] do
  reference astdev['branch']
  repository astdev['repository']
  enable_submodules true
  action :checkout
  timeout 1200
end
