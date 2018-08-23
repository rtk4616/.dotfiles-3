#!/bin/bash
set -e
if [[ -z "${DOTFILES}" ]]; then
    export DOTFILES="$(git rev-parse --show-toplevel)"
fi
source "$DOTFILES/.lib/include.sh"

function main {
    cat "$DOTFILES/config/*.gitconfig" > "$DOTFILES/git/global.gitconfig"
    git config --global include.path "$DOTFILES/global.gitconfig"
    git config --global core.excludesfile "$DOTFILES/global.gitignore"
    if ! icdiff --version &> /dev/null; then
        sudo pip install git+https://github.com/jeffkaufman/icdiff.git
    fi
}

main