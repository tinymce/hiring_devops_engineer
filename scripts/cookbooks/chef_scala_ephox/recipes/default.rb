# Cookbook Name:: chef_scala_ephox
# Recipe:: default

# update installed packages through apt (default cookbook)
include_recipe 'apt::default'

#installs the JRE
include_recipe 'java::default'

#create and then run the service
include_recipe 'chef_scala_ephox::appserver'

# create scala user
#include_recipe 'chef_scala_ephox::user'
