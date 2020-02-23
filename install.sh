# prepare
echo "Update mOS"
sudo softwareupdate -i -a --restart

echo "Install CLI Tools"
xcode-select --install
read -p "Please signin in AppStore"

# install Homebrew
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle