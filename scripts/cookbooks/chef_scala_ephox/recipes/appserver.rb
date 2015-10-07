#
# Cookbook Name:: chef_scala_ephox
# Recipe:: appserver
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
#copy the application file to its own directory - vagrant linking on reboot is hit and miss
execute "copy java application" do
  command "mkdir -p /opt/application && cp /vagrant/application/ts-assembly-1.0.0.jar /opt/application/ts-assembly-1.0.0.jar"
  action :run
end

template "javaapp.conf" do
    path "/etc/init/javaapp.conf"
    source "javaapp.conf.erb"
    owner "root"
    group "root"
    mode "0755"
end

service "javaapp" do
  supports :restart => true, :start => true, :stop => true, :reload => true
  action [ :enable, :start ]
  subscribes :restart, "template[javaapp.conf]", :immediately
end
