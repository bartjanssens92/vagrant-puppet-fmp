# This file was outgenerated on 04/06/14 by makeNew fmp
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.define :fmp01 do |fmp01_config|
    fmp01_config.vm.box = "Centos64-p"
    fmp01_config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20131103.box"
    fmp01_config.vm.hostname = "fmp01"
    fmp01_config.vm.synced_folder "files", "/vagrant_data"
    # fmp01_config.vm.network :forwarded_port, guest: 80, host: 8080
    fmp01_config.vm.provision :puppet do |fmp01_puppet|
      fmp01_puppet.manifests_path = "manifests"
      fmp01_puppet.manifest_file  = "site.pp"
#      fmp01_puppet.module_path    = "modules"
    end
  end
end
