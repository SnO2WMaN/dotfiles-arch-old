#!/bin/sh

DOTFILES="$(cd $(dirname $0); pwd)/../links"

asdf plugin add python
asdf install $(cat $DOTFILES/.tool-versions | grep python)

asdf plugin add golang
asdf install $(cat $DOTFILES/.tool-versions | grep golang)

asdf plugin add nodejs
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'
asdf install $(cat $DOTFILES/.tool-versions | grep nodejs)