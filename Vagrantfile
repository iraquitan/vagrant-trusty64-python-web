# -*- mode: ruby -*-
# vi: set ft=ruby :

# Check if vagrant-vbguest plugin is installed
unless Vagrant.has_plugin?("vagrant-vbguest")
  raise "vagrant-vbguest is not installed!\nTo install: $ vagrant plugin install vagrant-vbguest"
end

VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.7.4"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # PROVISION FILE PATH
  config.vm.provision "shell", path: "vagrant-provision/shell/setup.sh"

  # BOX SETTINGS
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update

  config.vm.hostname = "vivid64-vm"

  # NETWORK SETTINGS
  config.vm.network "forwarded_port", guest: 8000, host: 8000

  # VIRTUALBOX GUEST ADDITIONS
  config.vbguest.auto_update = true

  config.vm.post_up_message = "Virtual machine configuration setup properly!\n
  Brought to you by Iraquitan C Filho!"
end
