# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network "private_network", ip: "192.168.0.2"
  config.vm.hostname = "phoxy-lady"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "scripts/ansible/provision.yml"
  end
end
