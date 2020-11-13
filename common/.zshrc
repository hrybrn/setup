# hrybrn zsh config as of 13/11/20

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="sorin"
ZSH_COLORIZE_STYLE="colorful"

# makes autocomplete case insensitive
CASE_SENSITIVE="false"

# sets timestamp format for zsh history
HIST_STAMPS="yyyy-mm-dd"

case `uname` in
  Darwin)
    plugins=(git colorize pip python brew osx zsh-syntax-highlighting ssh-agent vi-mode colored-man-pages)
  ;;
  Linux)
    plugins=(git colorize pip python zsh-syntax-highlighting ssh-agent vi-mode colored-man-pages)
  ;;
esac

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# brew
export PATH="/usr/local/bin:$PATH"

# vscode - comment this if using stable release
# alias code='code-insiders'

# vim
export EDITOR=vim

# package managers - deno (js), cargo (rust), ruby (ruby), npm (js), yarn (js)
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# version managers - nvm (node), rvm (ruby), python (pyenv), sdkman (java)
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export NODE_PATH=$NODE_PATH:`npm root -g`
# rvm
export PATH="$PATH:$HOME/.rvm/bin"
# pyenv
eval "$(pyenv init -)"
# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# thefuck
eval $(thefuck --alias fuck)
alias fuckyeah='fuck --yeah'

# weather
alias weather='curl https://v2.wttr.in/'

# brupdate
alias brupdate='brew update && brew upgrade'

# gcloud completion
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
# source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'

# xcode
case `uname` in
  Darwin)
    export PATH="/usr/local/opt/expat/bin:$PATH"
    export SDKROOT=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
  ;;
esac

# startx on boot
case $(tty) in /dev/tty1)
  startx ;;
esac


# hub setup
# DISABLE_UPDATE_PROMPT=true

# eval "$(hub alias -s)"
# export GITHUB_HOST=github.intuit.com
# export HUB_PROTOCOL=ssh

# iterm
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"