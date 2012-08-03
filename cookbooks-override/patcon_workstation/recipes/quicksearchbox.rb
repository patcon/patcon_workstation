package = "Quick Search Box"
dmg_package package do
  source "https://qsb-mac.googlecode.com/files/QuickSearchBox-2.0.0.3789.Release.dmg"
  checksum "749fa6165138c3b3a0d0504fec55576414edde5cb6d093eaa10983647c2fe354"
end

# start up on login
execute "Start #{package} automatically" do
  user WS_USER
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/#{package}.app\"; \"Hide\" = 1; }'"
  only_if "defaults find '#{package}.app' | grep -E '^Found.*loginwindow'"
end
