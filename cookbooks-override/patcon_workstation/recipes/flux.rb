package = "Flux"
zip_app_package package do
  source "https://secure.herf.org/flux/Flux.zip"
  checksum "0d72525fac2758052c8ecc88068b7027f1ac0e1e42ac06e00b647dcd6fd74e51"
end

# start up on login
execute "Start #{package} automatically" do
  user WS_USER
  command "defaults write loginwindow AutoLaunchedApplicationDictionary -array-add '{ \"Path\" = \"/Applications/#{package}.app\"; \"Hide\" = 1; }'"
  only_if "defaults find #{package}.app | grep -E '^Found.*loginwindow'"
end
