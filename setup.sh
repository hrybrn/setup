# install script for dev environment on mac os / linux
# hrybrn 16/7/19

echo "dev env setup script by harry brown"

read -p "do you want to install dev tools? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  xcode-select --install
fi

read -p "do you want to install brew? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

read -p "do you want to install development programs? (requires brew) y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install vim zsh wget htop hub thefuck neovim swiftlint zlib yarn wget
  brew cask install google-chrome visual-studio-code intellij-idea spotify pock karabiner-elements alfred firefox iterm2 amethyst gitkraken postman via
fi

read -p "do you want to install sdkman? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  curl -s "https://get.sdkman.io" | bash
fi

read -p "do you want to install nvm? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
fi

read -p "do you want to install rvm? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  curl -sSL https://get.rvm.io | bash -s stable
fi

read -p "do you want to install pyenv? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  curl https://pyenv.run | bash
fi

read -p "do you want to generate a ssh key? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  ssh-keygen -b 4096
fi

read -p "do you want to import zsh config? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
  cp $DIR/.zshrc ~/.zshrc
fi

echo "here are a few things that you might want to do next:
  - node
  - python
    - cairosvg
  - ruby
    - bundle
  - docker
  - git profile
"