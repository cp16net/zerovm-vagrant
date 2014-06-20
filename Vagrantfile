Vagrant.configure("2") do |config|
  VAGRANT_POOL_NAME = ENV['VAGRANT_LIBVIRT_POOL'] || "default"
  SYNC_DIR = ENV['TROVE_VM_SYNC_DIR'] || "/zerovm"
  SOURCE_DIR = ENV['TROVE_VM_SOURCE_DIR'] || "../"

  config.vm.provision :shell, :path => "install.sh"

  # Support for libvirt
  # just need an image now and some instructions
  config.vm.provider :libvirt do |libvirt, override|
    # libvirt.driver = "qemu"
    # libvirt.host = "127.0.0.1"
    # libvirt.connect_via_ssh = true
    override.vm.box = "precise64"
    override.vm.box_url = "http://files.vagrantup.com/precise64.box"
    libvirt.memory = 3072
    libvirt.storage_pool_name = VAGRANT_POOL_NAME
    libvirt.cpus = 2
    override.vm.synced_folder SOURCE_DIR, SYNC_DIR, :nfs => true
  end

end
