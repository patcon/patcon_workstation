require_recipe "patcon_workstation::macports"
require_recipe "bittorrent"

bittorrent_peer "http://ca.isohunt.com/download/337781505/xcode+snow+leopard.torrent" do
  # file "xcode_4.2_and_ios_5_sdk_for_snow_leopard.dmg"
  path "#{Chef::Config['file_cache_path']}"
  action :create
end

dmg_package "Xcode" do
  dmg_name "xcode_4.2_and_ios_5_sdk_for_snow_leopard"
  #source "#{Chef::Config['file_cache_path']}/xcode_4.2_and_ios_5_sdk_for_snow_leopard.dmg"
  type "mpkg"
end
