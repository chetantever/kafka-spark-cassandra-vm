Vagrant.configure("2") do |config|
  config.vm.box = "precise64.box"
  config.vm.provision "shell",
        path: "bootstrap.sh",
        privileged: true

  config.vm.provider "virtualbox" do |v|
	v.memory = 2048
	v.cpus = 2
  end
end
