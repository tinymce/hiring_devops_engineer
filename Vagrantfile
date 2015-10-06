# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  config.vm.hostname = "mrmeseeks.lookatme"
  #For context, see https://www.youtube.com/watch?v=qUYvIAP3qQk
  config.vm.box = "ubuntu/vivid64"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "scripts/site.yml"
    ansible.inventory_path = "scripts/inventory"
    ansible.limit = "all"
    ansible.ask_sudo_pass = true
  end

end
