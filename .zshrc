# hrybrn zsh config as of 16/7/19

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="miloshadzic"

# makes autocomplete case sensitive
CASE_SENSITIVE="true"

# sets timestamp format for zsh history
HIST_STAMPS="yyyy-mm-dd"

plugins=(git colored-man colorize pip python brew osx zsh-syntax-highlighting ssh-agent)

source $ZSH/oh-my-zsh.sh

# User configuration

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# brew
export PATH="/usr/local/bin:$PATH"

# sdkman
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# vscode - comment this if using stable release
alias code='code-insiders'

# openssl
export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# pyenv
eval "$(pyenv init -)"

# docker-machine
eval $(docker-machine env default)

# vim
export EDITOR=vim

# package managers - deno (js), cargo (rust), ruby (ruby), node (js)
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="$HOME/.npm-packages/bin:$PATH"

# for avrgcc v4.5
# export PATH="/usr/local/CrossPack-AVR/bin:$PATH"
