# Cookbook Name:: chef_scala_ephox
# Recipe:: default

#setup OpenSSH, config options set in attriutes/default.rb
include_recipe 'openssh::default'

#setup firewall
include_recipe 'firewall::default'
#set custom firewall rules
include_recipe 'chef_scala_ephox::firewall'

# update installed packages through apt (default cookbook)
include_recipe 'apt::default'

#installs the JRE
include_recipe 'java::default'

# create application user
include_recipe 'chef_scala_ephox::user'

#create and then run the service
include_recipe 'chef_scala_ephox::appserver'
