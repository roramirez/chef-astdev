#
# Cookbook Name:: turbobil
# Recipe:: user
#

astdev = node['astdev']

include_recipe "oh_my_zsh"

# Config user env
# vimrc
template "#{astdev['home']}/.vimrc" do
  user astdev['user']
  source "vimrc.erb"
  mode 0644
end


node.default[:oh_my_zsh][:users] = [{
  :login   => 'vagrant',
    :theme   => 'gozilla',
      :plugins => ['git']
      }]
