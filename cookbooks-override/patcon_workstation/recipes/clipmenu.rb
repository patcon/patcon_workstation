package = "ClipMenu"
dmg_package package do
  source "https://dl.dropbox.com/u/1140644/clipmenu/ClipMenu_0.4.3.dmg"
  checksum "d0d7ca6c23f51b2dfe78c7bb40bf2f212c21b3304b3eacde86112d8ef3e6bfb9"
end

# start up on login
execute "Start #{package} automatically" do
  user WS_USER
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/#{package}.app\"; \"Hide\" = 1; }'"
  only_if "defaults find #{package}.app | grep -E '^Found.*loginwindow'"
end
