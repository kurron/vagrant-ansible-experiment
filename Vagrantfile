# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_version ">= 1.6.3"

Vagrant.configure("2") do |config|
  config.vagrant.host = :detect

  config.vm.box = "packer-trusty-x64-server"
# config.vm.box_url = "file:///G:/Users/RKurr/Vagrant/trusty-x64-server.box"
  config.vm.boot_timeout = 300
  config.vm.box_check_update = true
# config.vm.box_download_checksum = "19ab876677040a892dad48af40fea449"
# config.vm.box_download_checksum_type = "md5"
# config.vm.box_version = "1.0.0"
  config.vm.graceful_halt_timeout = 60
# config.vm.guest = :linux
  config.vm.post_up_message = "Hello, Ron.  Do you want to play a game?"
  config.vm.usable_port_range = 2200..2250

  config.ssh.username = "vagrant"
  config.ssh.password = "vagrant"
# config.ssh.host = "foo"
  config.ssh.port = 22
# config.ssh.guest_port = 4567
# config.ssh.private_key_path = "/tmp"
  config.ssh.forward_agent = false
  config.ssh.forward_x11 = false
  config.ssh.insert_key = true
# config.ssh.proxy_command = "foo"
  config.ssh.shell = "bash -l"

  config.vm.provider "virtualbox" do |v|
      v.customize ["modifyvm", :id, "--groups", "/Example"]
  end
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "ansible/playbook.yml"
    ansible.sudo = true
    ansible.sudo_user = "vagrant"
    ansible.verbose = "vvv"
  end

  config.vm.define "haproxy" do |haproxy|
      haproxy.vm.hostname = "haproxy"
      haproxy.vm.network :private_network, ip: "192.168.44.10"
      haproxy.vm.provider "virtualbox" do |v|
          v.name = "example.haproxy"
      end
  end

end