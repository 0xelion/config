#!/usr/bin/env bash

# VSCode

mkdir -p ~/.config/Code/User

cp -f ./vscode/settings.json ~/.config/Code/User/settings.json

cat ./vscode/extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension
done