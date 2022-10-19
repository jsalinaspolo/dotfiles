#!/bin/sh
IFS='
'
# Make sure we’re using the latest Homebrew
brew update

brew tap heroku/brew
brew tap snyk/tap
brew tap weaveworks/tap

formulae="
ack
adr-tools
autojump
awscli
bat
gettext
gh
git
go
grep
helm
htop
jq
k9s
kubernetes-cli
kustomize
nvm
pv
rbenv
ruby-build
screen
stern
tfenv
tree
vim
watch
weaveworks/tap/eksctl
wget
"

for f in $formulae; do
  echo ">> $f"
  arch -arm64 brew install $f
done

# Audiophile
#brew install sox --with-flac
