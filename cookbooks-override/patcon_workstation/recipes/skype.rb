package = "Skype"
dmg_package package do
  source "http://download.skype.com/macosx/Skype_5.8.0.1027.dmg"
  checksum "64ec1beaca76f648e7a5ba3bb1084afab735cbe6d6b17f9e2f52e22e14fcc596"
end

# start up on login
execute "Start #{package} automatically" do
  user WS_USER
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/#{package}.app\"; \"Hide\" = 1; }'"
  not_if "defaults find #{package}.app | grep -E '^Found.*loginwindow'"
end
