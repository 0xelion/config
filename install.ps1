# VSCode

Copy-Item -Force -Path "./vscode/settings.json" -Destination "C:\Users\$env:UserName\AppData\Roaming\Code\User\"

$extList = (Get-Content -Path "./vscode/extensions.txt")

Foreach ($ext in $extList) {
  code --install-extension $ext.Substring(0, $ext.IndexOf(' '))
}