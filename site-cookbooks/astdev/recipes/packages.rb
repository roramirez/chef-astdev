#
# Cookbook Name:: astdev
# Recipe:: packages
#
astdev = node['astdev']

# packages / dependencies
include_recipe "apt" if platform?("ubuntu", "debian")

# install the required packages.
astdev['packages'].each do |pkg|
  package pkg
end

# Install necessary packages for dev
# run script in Asterisk project
execute "Exec script install_prereq"  do
  command "sudo sh #{astdev['repo_path']}/contrib/scripts/install_prereq install"
  action :run
end
