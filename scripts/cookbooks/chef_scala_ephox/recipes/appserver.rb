#
# Cookbook Name:: chef_scala_ephox
# Recipe:: appserver
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#copy the application file to its own directory - vagrant linking on reboot is hit and miss

# copy the java application to local storage - if vagrants linked storage is missing the vm will still operate
execute "copy java application" do
  command "mkdir -p /opt/application && cp /vagrant/application/#{node['chef_scala_ephox']['app_name']} /opt/application/#{node['chef_scala_ephox']['app_name']}"
  action :run
end

# copy the upstart script
template "javaapp.conf" do
  path "/etc/init/javaapp.conf"
  source "javaapp.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

# create the service
service "javaapp" do
  supports :restart => true, :start => true, :stop => true, :reload => true
  action [ :enable, :start ]
end
