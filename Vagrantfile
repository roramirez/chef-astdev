# You can ask set more  memory and cores when creating your Vagrant machine:
# AST_VAGRANT_MEMORY=1536 AST_VAGRANT_CORES=2 vagrant up
MEMORY = ENV['AST_VAGRANT_MEMORY'] || '2048'
CORES = ENV['AST_VAGRANT_CORES'] || '2'

Vagrant::Config.run do |config|
  if RUBY_PLATFORM =~ /linux|darwin/
    config.vm.share_folder("vagrant-root", "/vagrant", ".", :nfs => true)
  end
end

Vagrant.configure("2") do |config|
  config.vm.box = "MyBoxDebian8"
  config.vm.box_url = "http://www.rodrigoramirez.com/boxes/vagrant-debian-jessie.box"
  config.vm.hostname = "astdev"

  config.vm.network "private_network", ip: "192.168.10.181"
  config.vm.usable_port_range = (2200..2270)
  config.vm.network :forwarded_port, guest: 22, host: 2223


  config.vm.provider :virtualbox do |v, override|
    v.customize ["setextradata", :id, "VBoxInternal/Devices/VMMDev/0/Config/GetHostTimeDisabled", 1]
    v.customize ["modifyvm", :id, "--memory", MEMORY]
    v.customize ["modifyvm", :id, "--cpus", CORES]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks', 'site-cookbooks']
    chef.add_recipe('astdev')

    chef.add_recipe('oh_my_zsh')
    chef.json = {
      "oh_my_zsh" => {
        "users" => [
          :login   => 'vagrant',
          :theme   => 'afowler',
          :plugins => ['git']
        ]
      }
    }

  end

  config.ssh.username = "vagrant"

  config.ssh.shell = "bash -l"

  config.ssh.keep_alive = true
  config.ssh.forward_agent = true
  config.ssh.forward_x11 = false
  config.vagrant.host = :detect
end
