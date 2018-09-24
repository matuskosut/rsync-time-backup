Vagrant.configure(2) do |config|
  # Development box
  config.vm.define "rsync-backup-dev" do |dev|
    # Select the box
    dev.vm.box = "bento/ubuntu-16.04"
    # Run playbook
    dev.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "vagrant.yaml"
    end
    dev.vm.provider "virtualbox" do |vbox|
      vbox.memory = 2048
      vbox.cpus = 1
    end
    # Forward SSH agent
    # dev.ssh.forward_agent = true
    # Setup shared project directory
    # dev.vm.synced_folder "../", "/home/vagrant/dev"
  end
end
