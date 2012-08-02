require_recipe "homesick"

linux_user = "homebase"
github_user = "patcon"

homesick_castle "dotfiles-pub" do
  user linux_user
  source "https://github.com/#{github_user}/dotfiles-pub.git"
  action :update
end

homesick_castle "dotfiles-priv" do
  user linux_user
  source "git@bitbucket.org:#{github_user}/dotfiles-priv.git"
  action :update
end
