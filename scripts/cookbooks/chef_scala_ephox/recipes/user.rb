# Cookbook Name:: chef_scala_ephox
# Recipe:: user

group node['chef_scala_ephox']['group']

user node['chef_scala_ephox']['user'] do
  group node['chef_scala_ephox']['group']
  system true
  shell '/bin/bash'
end
