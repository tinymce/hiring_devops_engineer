#
# Cookbook Name:: chef_scala_ephox
# Recipe:: firewall
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Open port 8009 to incoming traffic.
firewall_rule 'javaapp' do
  port node['chef_scala_ephox']['app_port']
  protocol :tcp
  action :allow
  direction :in
end

# open port 53 for DNS
firewall_rule "dns" do
  port 53
  action :allow
  direction :out
end

# Open port 80 to traffic
firewall_rule "http" do
  port 80
  protocol :tcp
  action :allow
  direction :out
end

# open port 443 to traffic
firewall_rule "https" do
  port 443
  protocol :tcp
  action :allow
  direction :out
end

# reject all other outbound traffic traffic
firewall_rule 'all' do
  direction :out
  action :deny
end
