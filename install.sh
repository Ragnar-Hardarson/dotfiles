#!/bin/sh

echo "Window management setup commenced..."

echo "Checking for Homebrew ☕️"
# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  echo "Homebrew was not found. Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

echo "Installing dependencies"

# Install Slate window management
brew cask install slate

# Install Karabiner-elements for hyper key
brew cask install karabiner-elements

echo "Dependencies installed. Fetching ragnar-h configs"

# Slate configs
wget -O ~/.slate https://raw.githubusercontent.com/Ragnar-H/slate-setup/master/.slate

# Karabiner elements
wget -O ~/.config/karabiner https://raw.githubusercontent.com/Ragnar-H/slate-setup/master/karabiner.json

echo "Configs set. Slate and Karabiner-elements might require a reload to take effect"

echo "Your caps-lock has now been converted to a Hyper key"

echo "Try the following combinations:"

echo "Caps-lock + R : move focused window to the right"
echo "Caps-lock + L : move focused window to the left"
echo "Caps-lock + F : fullscreen"
echo "Caps-lock + M : focus Spotify"
echo "Caps-lock + W : focus Chrome"
echo "Caps-lock + T : focus iterm2"
echo "Caps-lock + E : focus VSCode"

echo "These configs can found in ~/.slate"