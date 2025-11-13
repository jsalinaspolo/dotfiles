#!/bin/sh
IFS='
'

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts
brew tap homebrew/cask-drivers

formulae="
1password-cli
bitwarden
claude-code
flameshot
font-consolas-for-powerline
font-fira-mono-for-powerline
font-inconsolata-for-powerline
font-source-code-pro-for-powerline
google-chrome
arc
intellij-idea
jetbrains-toolbox
insomnia
iterm2
monitorcontrol
appcleaner
docker
slack
the-unarchiver
visual-studio-code
vlc
zoom
logitech-presentation
miro
spotify
postman
notion
rectangle
signal
tuple
"

for f in $formulae; do
  brew install --cask $f
done
