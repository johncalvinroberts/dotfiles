1. install [vs code](https://code.visualstudio.com/download)
2. install [hyper](https://hyper.is/#installation)
3. clone this repo
4. Set up GPG -> [link](https://blog.nemit.fi/verify-your-github-commits-2fb42bff6048)
5. Replace this line with gpg signingkey in `gitconfig`
```
[user]
	email = john.calvin.roberts@gmail.com
	name = John Roberts
	signingkey = INSERT_KEY_HERE
```
6. run `zsh install.sh`
