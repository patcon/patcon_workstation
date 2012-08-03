require_recipe "pivotal_workstation::git"

brew_install "legit"

execute "legit install > /dev/null" do
  user WS_USER
end
