dmg_package "VirtualBox" do
  source "http://download.virtualbox.org/virtualbox/4.1.18/VirtualBox-4.1.18-78361-OSX.dmg"
  checksum "b17465ee88135f9dbb3f4e6eba1bee408f72f2dafebd872c51344cbb474bffde"
  action :install
  type "mpkg"
  package_id "org.virtualbox.pkg.virtualbox"
end

extpack_version = "4.1.18"
remote_file "VirtualBox Extension Pack" do
  path "#{Chef::Config[:file_cache_path]}/Oracle_VM_VirtualBox_Extension_Pack.vbox-extpack"
  source "http://download.virtualbox.org/virtualbox/4.1.18/Oracle_VM_VirtualBox_Extension_Pack-#{extpack_version}.vbox-extpack"
  checksum "1c8cf8d67d9adf75fd02d529c03ee2f960ec4be08970fd8030ba7912ef1e3198"
  action :create_if_missing
  backup false
end

execute "VBoxManage extpack install #{Chef::Config[:file_cache_path]}/Oracle_VM_VirtualBox_Extension_Pack.vbox-extpack --replace > /dev/null" do
  not_if "VBoxManage list extpacks | grep 'Version:[ ]*#{extpack_version.gsub('.', '\.')}$'"
end
