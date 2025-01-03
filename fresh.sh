#!/bin/sh

echo "Setting up your Mac..."

if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# Set up Git
git config --global user.name "Chris Teyerl"
git config --global user.email "chris.teyerl@cosamey.com"
git config --global core.editor nano
git config --global core.excludesfile ~/.dotfiles/.gitignore_global

# Create projects directories
mkdir $HOME/Developer
mkdir $HOME/Developer/Archive
mkdir $HOME/Developer/Misc
mkdir $HOME/Developer/Packages
mkdir $HOME/Developer/Playground
mkdir $HOME/Developer/Sites
