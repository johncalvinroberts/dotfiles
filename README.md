1. install [vs code](https://code.visualstudio.com/download)
1. install [home brew](https://brew.sh/)
1. clone this repo
1. Set up GPG -> [link](https://blog.nemit.fi/verify-your-github-commits-2fb42bff6048)
1. Replace this line with gpg signingkey in `gitconfig`
```
[user]
	email = john.calvin.roberts@gmail.com
	name = John Roberts
	signingkey = INSERT_KEY_HERE
```
6. run `zsh install.sh`
