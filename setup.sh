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

read -p "do you want to install pyenv? y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  curl https://pyenv.run | bash
fi

read -p "do you want to install docker? (requires brew) y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve
  brew cask install kitematic
  sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
  sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
fi

read -p "do you want to install development programs? (requires brew) y/n " -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
  brew install vim zsh wget htop
  brew cask install google-chrome visual-studio-code intellij-idea spotify hyperswitch pock karabiner-elements alfred firefox iterm2
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
