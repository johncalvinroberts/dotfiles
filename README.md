### Getting Started

A good starting point is to create a new SSH key for the new computer.

```
ssh-keygen -t ed25519 -C "john.calvin.roberts@gmail.com"
cat ~/.ssh/id_ed25519.pub | pbcopy
ssh-add --apple-use-keychain ~/.ssh/id_ed25519
```

Add that to GitHub, clone this repo, and start installing stuff.

### Installing Stuff

**install [home brew](https://brew.sh/)**

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**install [vs code](https://code.visualstudio.com/download)**
```
brew install visual-studio-code --cask
```

After doing that, authenticate VS code with GitHub for settings sync.

**install [zed](https://zed.dev)**
```
brew install --cask zed
```

After doing that, authenticate zed with GitHub.


**Update xcode tools**
```
sudo softwareupdate --install -a
```

If that doesn't apply any changes, try:
```
sudo rm -rf /Library/Developer/CommandLineTools
xcode-select --install
```

**Install zsh and oh-my-zsh:**
```
brew install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* Install [`docker`](https://docs.docker.com/desktop/install/mac-install/)
* Install [`kubectl`](https://kubernetes.io/docs/tasks/tools/install-kubectl-macos/)
* Install any of the brews from [brews](./brews) as needed
* clone this repo

**Set up GPG signing of commits -> [link](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)**

To install, just do `brew install gnupg`, don't try to build from source and install like a total psychopath.

Replace this line with gpg signingkey in `gitconfig`

```
[user]
	email = john.calvin.roberts@gmail.com
	name = John Roberts
	signingkey = INSERT_KEY_HERE
```

Also, now would be a good time to add a company-specific Git config, so that your company email will show in commit history. Create a `.gitconfig-<company>` and append it tothe section with additional extensions in the main gitconfig.


**Lastly, run `zsh install.sh`**

### Other things to install

Can all be installed with brew cask:

* [rectangle](https://rectangleapp.com/)
* [insomnia http client](https://insomnia.rest/)
* spotify
* slack
* notion
* discord
