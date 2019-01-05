Vagrant.configure("2") do |config|

    config.vm.box = "hbsmith/awslinux"

    config.vm.provider "virtualbox" do |v|
        v.memory = 1024
    end

    config.vm.define "jenkins" do |m|
        m.vm.network "private_network", ip: "172.17.177.43"
    end

end
