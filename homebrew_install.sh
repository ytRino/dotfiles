#!/bin/bash

echo "installing homebrew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor..."
which brew >/dev/null 2>&1 && brew doctor

echo "run brew update..."
which brew >/dev/null 2>&1 && brew update

echo "ok. run brew upgrade..."

brew upgrade --all

formulas=(
    git
    wget
    curl
    tree
    openssl
    tmux
    reattach-to-user-namespace
    z
    colordiff
    zsh-completions
    "--with-cocoa --srgb emacs"
    cask
    awscli
    peco
    hub
    tig
    node
    ansible
    python3
    lua
    mysql
    postgresql
    sqlite
    composer
    markdown
    ctags
    ssh-copy-id
    mecab
    diff-so-fancy
    thefuck
)

echo "brew tap..."

echo "start brew install apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

brew tap homebrew/cask-fonts

casks=(
    google-chrome
    google-japanese-ime
    slack
    java
    adoptopenjdk8
    android-sdk
    android-studio
    charles
    libreoffice
    vlc
    atom
    virtualbox
    vagrant
    vagrant-manager
    font-ricty-diminished
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    brew install --cask $cask
done

brew cleanup
brew cask cleanup

cat << END

**************************************************
HOMEBREW INSTALLED! bye.
**************************************************

END
