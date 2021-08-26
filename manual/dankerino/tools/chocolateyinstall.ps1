$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'dankerino.zip'
$packagename  = 'Dankerino'

Get-ChocolateyUnzip -FileFullPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\\dankerino.zip" -Destination $toolsDir -PackageName $packagename
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Dankerino.lnk" -TargetPath "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\Dankerino\chatterino.exe"