#
# Cookbook Name:: dotfiles
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Sync dotfiles
git "#{node['home']}/dotfiles" do
  repository 'https://github.com/wom2-wombat/dotfiles_for_ubuntu'
  revision   'master'
  user       'vagrant'
  group      'vagrant'
  action     :sync
end
