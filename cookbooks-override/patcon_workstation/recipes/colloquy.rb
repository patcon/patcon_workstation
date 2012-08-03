package_version = case node['platform_version']
when /^10\.6\.[0-9]+/ # Snow Leopard
  '2.3'
when /^10\.7\.[0-9]+/ # Lion
  '2.4'
end

package = "Colloquy"
zip_app_package package do
  source "http://colloquy.info/downloads/colloquy-#{package_version}.zip"
end

# start up on login
execute "Start #{package} automatically" do
  user WS_USER
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/#{package}.app\"; \"Hide\" = 1; }'"
  only_if "defaults find #{package}.app | grep -E '^Found.*loginwindow'"
end
