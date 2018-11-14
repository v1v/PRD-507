Vagrant.configure("2") do |config|
  config.vm.box = "mwrock/Windows2016"

  config.vm.network "forwarded_port", guest: 8080, host: 18080
  config.vm.guest = :windows
  config.vm.provider "virtualbox" do |vb|
     vb.gui = true
     vb.memory = "4096"
  end

  config.vm.provision "shell", path: "choco.ps1"
  config.vm.provision "shell", path: "prereq.ps1"

end
