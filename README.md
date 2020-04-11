
prepare system
##############

update

sudo softwareupdate -i -a --restart

install command tools

xcode-select --install

Clone repo to $HOME/.dotfiles
#############################

git clone https://github.com/rebortg/dotfiles ~/.dotfiles