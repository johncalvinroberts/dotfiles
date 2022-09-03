**install [home brew](https://brew.sh/)**

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**install [vs code](https://code.visualstudio.com/download)**
```
brew install visual-studio-code --cask
```

**install alacritty and tmux**
```
brew instal alacritty --cask
brew install tmux
```

**Update xcode tools**
```
xcode-select --install
```

**Install zsh and oh-my-zsh:**
```
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* Install docker
* Install all the brews from here [my brews](https://johnny.sh/notes/brews-i-installed/)**
* clone this repo

**Set up GPG -> [link](https://blog.nemit.fi/verify-your-github-commits-2fb42bff6048)**

Replace this line with gpg signingkey in `gitconfig`

```
[user]
	email = john.calvin.roberts@gmail.com
	name = John Roberts
	signingkey = INSERT_KEY_HERE
```


**Lastly, run `zsh install.sh`**

