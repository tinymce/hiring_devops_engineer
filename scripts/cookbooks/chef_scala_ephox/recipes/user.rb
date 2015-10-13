# Cookbook Name:: chef_scala_ephox
# Recipe:: user

# create application user group
group node['chef_scala_ephox']['app_group']

#create the application user
user node['chef_scala_ephox']['app_user'] do
  group node['chef_scala_ephox']['app_group']
  system true
  shell '/bin/bash'
end

# inject the public key for the supplied key into the vagrant user
# no need to supply a key for the java_app user, as it is a system user (non-login)
execute "add private ssh key" do
  command "cat /vagrant/scripts/pub_ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys"
end
