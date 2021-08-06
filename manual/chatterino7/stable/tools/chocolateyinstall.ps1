$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'chatterino7-stable.zip'
$packagename  = 'Chatterino7'

Get-ChocolateyUnzip -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\chatterino7-stable.zip" -Destination "$env:LOCALAPPDATA\Programs\Chatterino7" -PackageName "Chatterino7"
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino7.lnk" -TargetPath "$env:LOCALAPPDATA\Programs\Chatterino7\chatterino.exe"