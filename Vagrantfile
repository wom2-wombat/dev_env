# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # Use Official Ubuntu Server 14.04 LTS
  config.vm.box = 'ubuntu/trusty64'

  # Install chef
  config.omnibus.chef_version = :latest

  # Run chef
  config.vm.provision 'chef_solo' do |chef|
    # Set locations of cookbook dirs
    chef.cookbooks_path = [
      'site-cookbooks'
    ]

    # Set node attributes
    chef.json = {
      home: '/home/vagrant'
    }

    # Add recipes to run_list
    chef.add_recipe 'git'
    chef.add_recipe 'dotfiles'
  end
end
