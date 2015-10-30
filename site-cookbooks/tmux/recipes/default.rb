#
# Cookbook Name:: tmux
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Install
package 'tmux' do
  action :install
end

# Make link
link "#{node['home']}/.tmux.conf" do
  owner 'vagrant'
  group 'vagrant'
  to    "#{node['home']}/dotfiles/tmux.conf"
end
