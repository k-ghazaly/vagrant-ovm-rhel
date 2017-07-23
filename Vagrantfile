# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do |config|


### In this step we specify the synced folder beteen Host and Vagrant Box

  config.vm.synced_folder "src/", "/home/vagrant/docker-nginx"

### Specify the Vagrant Box image

  config.vm.box = "iamseth/rhel-7.3"

### Configuring the provider as Oracle VirtualBox
  
  config.vm.provider "virtualbox" do |v|

### The Vagrant Box Name

    v.name = "vag_rhel"
  end

### Configuring the provioson tool as Ansible and choosing the PlayBook name

  config.vm.provision "ansible" do |ansible|
   ansible.playbook = "play.yml"
  end

### Configuring the Port forwarding between the Host and Guest

   config.vm.network "forwarded_port", guest: 80, host: 7777


### Configuring Private IP for internal communication between host and guest
   config.vm.network "private_network", ip: "10.0.0.3"


end
