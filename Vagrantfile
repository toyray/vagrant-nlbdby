# -*- mode: ruby -*-
# vi: set ft=ruby :
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Box settings
  config.vm.box = "ubuntu/trusty32"
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.post_up_message = "cd ~/nlbdby && tmux run teamocil nlbdby"
  
  #Provisioning
  config.vm.provision "shell", path: "init/bootstrap.sh"
  
  config.vm.provision "file", source: "env/nlbdby.yml", destination: "$HOME/.teamocil/nlbdby.yml"
  config.vm.provision "shell", path: "init/setup_nlbdby.sh", privileged: false
  
  config.vm.provision "file", source: "env/vimrc", destination: "$HOME/.vimrc"
  config.vm.provision "shell", path: "init/setup_vim.sh", privileged: false
end
