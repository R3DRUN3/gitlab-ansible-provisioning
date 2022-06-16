VAGRANT_API_VERSION=2

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  

  config.vm.box = "ubuntu/focal64"
  config.vm.define "gitlab"
  config.ssh.insert_key = false
  config.vm.network "private_network", ip: "192.168.56.11"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096 #Gitlab requires at least 4GB of RAM
    v.cpus = 1
  end

  config.vm.provision "ansible" do |ansible|
    ansible.verbose = "v"
    ansible.playbook = "gitlab_provisioning.yml"
  end
end