﻿$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'chatterino-weekly.zip'
$packagename  = 'Chatterino'

Get-ChocolateyUnzip -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\chatterino-weekly.zip" -Destination "C:\Program Files\Chatterino" -PackageName "Chatterino"
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino.lnk" -TargetPath "C:\Program Files\Chatterino\chatterino.exe"