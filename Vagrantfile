# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  # latest LTS Ubuntu
  config.vm.box = "ubuntu/trusty64"

  # Naming: until it is tested we can assume that the VM is in a quantum state, where it is both passing and failing until we test the box
  config.vm.provider "virtualbox" do |v|
    v.name = "SchrodingersVM"
  end
  config.vm.hostname = "SchrodingersVM"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  #set local private key (specific to this repo as it is public), do not use on an internet facing server
  #config.ssh.private_key_path = "scripts/id_rsa"

  #No need to specify synced folders, vagrant sync's the entire folder to /vagrant

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # EPHOX-IMPORTANT: When you choose a provisioning system, please dont mix multiple
  # provisioning systems as it gets very confusing.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL

  # in production we would use chef client to provision from a chef server, but that would be impractical for this exercise
  # we use chef solo to run the cookbook locally
  config.vm.provision "chef_solo" do |chef|
    # define local cookbooks folder
    chef.cookbooks_path = "scripts/cookbooks"
    # run the chef_scala_ephox cookbook
    chef.add_recipe "chef_scala_ephox"
  end
end
