set -ex
echo "Type in your first and last name (no accent or special characters - e.g. 'ç'): "
read full_name

echo "Type in your email address (the one used for your GitHub account): "
read email

git config --global user.email $email
git config --global user.name $full_name

curl https://raw.githubusercontent.com/johncalvinroberts/zeit.zsh-theme/master/johnny.zsh-theme -Lo ~/.oh-my-zsh/custom/themes/johnny.zsh-theme
AS_FOLDER=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
if [ ! -d "$AS_FOLDER" ] ; then
    git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
fi


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
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
fi
cd "$CURRENT_DIR"

setopt nocasematch
git config --global core.editor "vim"
bundler_editor="vim"


echo "Installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

echo "Copying alacritty config..."
mkdir -p "$HOME/.config/alacritty"
cp -fr "./alacritty.toml" "$HOME/.config/alacritty/alacritty.toml"

echo "Copying zed config..."

echo "Copying zed config..."
mkdir -p "$HOME/.config/zed"
cp -fr ./zed/* "$HOME/.config/zed/"



# The following stolen from https://github.com/mathiasbynens/dotfiles/blob/master/.macos and kun
echo "Setting some system defaults..."
# Disable the over-the-top focus ring animation
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false
# make key repeast fast af
defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 1
# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
# Finder: show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Set padding for toolbar items to 1, so stuff doesn't go under the notch
defaults -currentHost write -globalDomain NSStatusItemSelectionPadding -int 1
defaults -currentHost write -globalDomain NSStatusItemSpacing -int 1
#defaults write com.apple.universalaccess mouseDriverCursorSize -float 1.5

# put all screenshots into a folder on the desktop
mkdir -p "$HOME/Desktop/screenshots"
defaults write com.apple.screencapture location "$HOME/Desktop/screenshots"

killall SystemUIServer


while IFS= read -r line || [ -n "$line" ]; do
  if [ -n "$line" ]; then
    echo "Installing $line..."
    brew install "$line"
  fi
done < brews

echo "Done installing brews"
echo "installing casks"

while IFS= read -r line || [ -n "$line" ]; do
  if [ -n "$line" ]; then
    echo "Installing $line..."
    brew install --cask "$line"
  fi
done < casks

echo "Done installing casks"

zsh ~/.zshrc
