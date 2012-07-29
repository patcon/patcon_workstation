package = "Caffeine"
zip_app_package package do
  source "http://download.lightheadsw.com/download.php?software=caffeine"
  checksum "9203c30951f9aab41ac294bbeb1dcef7bed401ff0b353dcb34d68af32ea51853"
  zip_file "caffeine1.1.1.zip"
end

# start up on login
execute "Start #{package} automatically" do
  user WS_USER
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/#{package}.app\"; \"Hide\" = 1; }'"
  not_if "defaults find #{package}.app | grep -E '^Found.*loginwindow'"
end
