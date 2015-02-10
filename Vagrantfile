VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 80, host: 8080, auto_correct: true
#  config.vm.network "private_network", ip: "33.33.33.100"
  config.vm.hostname = 'phpenv'

#  config.vm.synced_folder ".", "/vagrant", type: "nfs"

#  config.ssh.forward_agent = true

  config.vm.provision "shell", path: "provision.sh", privileged: false

  config.vm.provider :virtualbox do |vb|
    vb.memory = 1024
    vb.cpus = 2
#    vb.customize [
#      'modifyvm', :id,
#      "--natdnshostresolver1", "on"
#    ]
  end
end