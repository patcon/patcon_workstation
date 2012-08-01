package_url = case node['platform_version']
when /^10\.6\.[0-9]+/ # Snow Leopard
  "https://distfiles.macports.org/MacPorts/MacPorts-2.1.2-10.6-SnowLeopard.pkg"
when /^10\.7\.[0-9]+/ # Lion
  "https://distfiles.macports.org/MacPorts/MacPorts-2.1.2-10.7-Lion.pkg"
end

remote_file "#{Chef::Config['file_cache_path']}/MacPorts-2.1.2-#{node['platform_version']}.pkg" do
  source package_url
  action :create_if_missing
end

execute "installer -pkg #{Chef::Config['file_cache_path']}/MacPorts-2.1.2-#{node['platform_version']}.pkg -target /"
