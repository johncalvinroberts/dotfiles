ZSH=$HOME/.oh-my-zsh
source  ~/.bash_profile

ZSH_DISABLE_COMPFIX=true
# You can change the theme with another one:
#   https://github.com/robbyrussell/oh-my-zsh/wiki/themes
ZSH_THEME="johnny"
# Add ruby version on prompt (float right)
RPS1='[$(nvm current)]$EPS1'

plugins=(gitfast brew rbenv last-working-dir common-aliases sublime zsh-syntax-highlighting history-substring-search zsh-autosuggestions)

# Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/share/doc/homebrew/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

# Actually load Oh-My-Zsh
source "${ZSH}/oh-my-zsh.sh"

# Rails and Ruby uses the local `bin` folder to store binstubs.
# So instead of running `bin/rails` like the doc says, just run `rails`
export PATH="./bin:${PATH}:/usr/local/sbin"

# config gpg
export GPG_TTY=$(tty)
# Store your own aliases in the ~/.aliases file and load the here.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# Encoding stuff for the terminal
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"
export BUNDLER_EDITOR="'/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl'"

# pure prompt

# autoload -U promptinit; promptinit
# optionally define some options
# PURE_CMD_MAX_EXEC_TIME=10

# change the path color
# zstyle :prompt:pure:path color white

# change the color for both `prompt:success` and `prompt:error`
#zstyle ':prompt:pure:prompt:*' color cyan
#prompt pure

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

 # DENO STUFF

export DENO_INSTALL="/Users/$USER/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u


 # JAVA?!
PATH="/usr/local/opt/openjdk/bin:$PATH" 
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
. /opt/homebrew/etc/profile.d/z.sh



# bun completions
[ -s "/Users/johnroberts/.bun/_bun" ] && source "/Users/johnroberts/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
