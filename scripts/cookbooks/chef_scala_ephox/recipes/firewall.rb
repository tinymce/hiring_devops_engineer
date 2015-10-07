#
# Cookbook Name:: chef_scala_ephox
# Recipe:: firewall
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Open port 80 to incoming traffic.
firewall_rule 'javaapp' do
  port node['chef_scala_ephox']['app_port']
  protocol :tcp
  action :allow
  direction :in
end

# reject all other traffic
#firewall_rule 'all' do
#  protocol :tcp
#  direction :in
#  action :deny
#end
