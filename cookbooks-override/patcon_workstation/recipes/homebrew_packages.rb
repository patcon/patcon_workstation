# When MacPorts is installed, must deactivate this package so homebrew can use
# the native one.
#
# execute "port -f deactivate libiconv"

%w{
  colordiff
  curl
  git
  git-extras
  git-flow
  hub
  macvim
  tmux
  tree
  zsh
}.each { |pkg| brew_install pkg }

# execute "port -f activate libiconv"
