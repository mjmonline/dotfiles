#!/bin/sh
[ -d "$HOME/.oh-my-zsh" ] && exit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
