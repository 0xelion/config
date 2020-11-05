#!/usr/bin/env bash

# VSCode

cp -f "./vscode/settings.json" "~/.config/Code/User/settings.json"

cat extensions.txt | while read extension || [[ -n $extension ]];
do
  code --install-extension $extension
done