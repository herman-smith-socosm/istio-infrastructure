#!/bin/bash

ISTIO_VERSION=1.2.4

curl -L https://git.io/getLatestIstio | ISTIO_VERSION=$ISTIO_VERSION sh -
mv istio-$ISTIO_VERSION /usr/local/share/

echo "OVERRIDE!!! To configure the istioctl client tool for your workstation, add the /usr/local/share/istio-$ISTIO_VERSION/bin directory to your environment path variable"

brew info bash-completion
brew install bash-completion

mkdir ~/.oh-my-zsh/completions
cp /usr/local/share/istio-$ISTIO_VERSION/tools/_istioctl ~/.oh-my-zsh/completions
source ~/.oh-my-zsh/completions/_istioctl