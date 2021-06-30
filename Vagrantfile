# -*- mode: ruby -*-
# vi: set ft=ruby sw=2 st=2 et :
# frozen_string_literal: true

Vagrant.configure('2') do |config|
  config.vm.box = 'debian/buster64'
  config.vm.box_check_update = false

  # Limiter la RAM des VM
  config.vm.provider 'virtualbox' do |vb|
    # vb.customize ['modifyvm', :id, '--cpuexecutioncap', '50']
    vb.memory = '2000'
    vb.cpus = 2
    vb.gui = false
  end

  # Mettre en place un cache pour APT
  # config.vm.synced_folder 'v-cache', '/var/cache/apt'

  config.vm.define 'control' do |machine|
    machine.vm.hostname = 'control'
    machine.vm.network 'private_network', ip: '192.168.50.250' # <<<< Corriger ICI
  end

  config.vm.define 'REVPROXY' do |machine|
    machine.vm.hostname = 'REVPROXY'
    machine.vm.network 'private_network', ip: '192.168.50.10' # <<<< Corriger ICI
  end

  config.vm.define 'APP1' do |machine|
    machine.vm.hostname = 'APP1'
    machine.vm.network 'private_network', ip: '192.168.50.20' # <<<< Corriger ICI
  end

  config.vm.define 'APP2' do |machine|
    machine.vm.hostname = 'APP2'
    machine.vm.network 'private_network', ip: '192.168.50.30' # <<<< Corriger ICI
  end

  config.vm.define 'DB' do |machine|
    machine.vm.hostname = 'DB'
    machine.vm.network 'private_network', ip: '192.168.50.40' # <<<< Corriger ICI
  end

  config.vm.define 'CACHE' do |machine|
    machine.vm.hostname = 'DB'
    machine.vm.network 'private_network', ip: '192.168.50.50' # <<<< Corriger ICI
  end

  config.vm.provision 'shell', path: 'provision.sh'
end