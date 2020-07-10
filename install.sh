set -ex
echo "Type in your first and last name (no accent or special characters - e.g. 'ç'): "
read full_name

echo "Type in your email address (the one used for your GitHub account): "
read email

git config --global user.email $email
git config --global user.name $full_name

curl https://raw.githubusercontent.com/johncalvinroberts/zeit.zsh-theme/master/johnny.zsh-theme -Lo ~/.oh-my-zsh/custom/themes/johnny.zsh-theme
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

backup() {
  target=$1
  if [ -e "$target" ]; then           # Does the config file already exist?
    if [ ! -L "$target" ]; then       # as a pure file?
      mv "$target" "$target.backup"   # Then backup it
      echo "-----> Moved your old $target config file to $target.backup"
    fi
  fi
}

#!/bin/zsh
for name in *; do
  if [ ! -d "$name" ]; then
    target="$HOME/.$name"
    if [[ ! "$name" =~ '\.sh$' ]] && [ "$name" != 'README.md' ]; then
      backup $target

      if [ ! -e "$target" ]; then
        echo "-----> Symlinking your new $target"
        ln -s "$PWD/$name" "$target"
      fi
    fi
  fi
done

REGULAR="\\033[0;39m"
YELLOW="\\033[1;33m"
GREEN="\\033[1;32m"

# zsh plugins
CURRENT_DIR=`pwd`
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  echo "-----> Installing zsh plugin 'zsh-syntax-highlighting'..."
  git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
fi
cd "$CURRENT_DIR"

setopt nocasematch
git config --global core.editor "vim"
bundler_editor="vim"




echo "VS code config"

code --install-extension akamud.vscode-theme-onedark
code --install-extension Arjun.swagger-viewer
code --install-extension dbaeumer.vscode-eslint
code --install-extension debian001.app-migrator
code --install-extension drKnoxy.eslint-disable-snippets
code --install-extension dsznajder.es7-react-js-snippets
code --install-extension EditorConfig.EditorConfig
code --install-extension Equinusocio.vsc-material-theme
code --install-extension esbenp.prettier-vscode
code --install-extension file-icons.file-icons
code --install-extension freebroccolo.reasonml
code --install-extension hsnazar.hyper-term-theme
code --install-extension jaredly.reason-vscode
code --install-extension kumar-harsh.graphql-for-vscode
code --install-extension LaurentTreguier.vscode-simple-icons
code --install-extension monokai.theme-monokai-pro-vscode
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-vscode.sublime-keybindings
code --install-extension octref.vetur
code --install-extension PKief.material-icon-theme
code --install-extension Prisma.vscode-graphql
code --install-extension qiu8310.minapp-vscode
code --install-extension redhat.vscode-yaml
code --install-extension silvenon.mdx
code --install-extension wix.vscode-import-cost
code --install-extension zhuangtongfa.Material-theme

echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

cp -fr "./vscode-settings.json" "$HOME/Library/Application\ Support/Code/User/settings.json"


# The following stolen from https://github.com/mathiasbynens/dotfiles/blob/master/.macos and kun
echo "Some system defaults..."
# Disable the over-the-top focus ring animation
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false
# make key repeast fast af
defaults write -g InitialKeyRepeat -int 15 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Finder: show hidden files by default
#defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true


zsh ~/.zshrc
