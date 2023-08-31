###########
#
# install.sh
#
# script for installing some stuff that are handy
#
###########

# install nvm (see https://github.com/nvm-sh/nvm/releases for latest version)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
source ~/.bashrc

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
