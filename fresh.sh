#!/bin/sh

set -eu

echo "Setting up your Mac..."

DOTFILES="$HOME/.dotfiles"

if ! command -v brew >/dev/null 2>&1; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Replace .zshrc from $HOME and symlink the .zshrc file from .dotfiles
rm -f "$HOME/.zshrc"
ln -s "$DOTFILES/.zshrc" "$HOME/.zshrc"

# Update Homebrew recipes
brew update

# Install all dependencies with bundle
brew bundle --file "$DOTFILES/Brewfile"

# Set up Git
git config --global user.name "Chris Teyerl"
git config --global core.editor nano
git config --global core.excludesfile "$DOTFILES/.gitignore_global"

# Create projects directories
mkdir -p "$HOME/Developer"
mkdir -p "$HOME/Developer/Archive"
mkdir -p "$HOME/Developer/Misc"
mkdir -p "$HOME/Developer/Packages"
mkdir -p "$HOME/Developer/Playground"
mkdir -p "$HOME/Developer/Sites"
