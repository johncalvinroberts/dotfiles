1. install [home brew](https://brew.sh/)
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
1. install [vs code](https://code.visualstudio.com/download)
```
brew install visual-studio-code --cask
```
1. install alacritty and tmux
```
brew instal alacritty --cask
brew install tmux
```
1. Update xcode tools
```
xcode-select --install
```
1. Install zsh and oh-my-zsh:
```
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
1. Install docker
1. all the brews from here [my brews](https://johnny.sh/notes/brews-i-installed/)
3. clone this repo
4. Set up GPG -> [link](https://blog.nemit.fi/verify-your-github-commits-2fb42bff6048)
5. Replace this line with gpg signingkey in `gitconfig`
```
[user]
	email = john.calvin.roberts@gmail.com
	name = John Roberts
	signingkey = INSERT_KEY_HERE
```
1. run `zsh install.sh`

