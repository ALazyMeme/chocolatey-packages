$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'chatterino7-installer.exe'
$packagename  = 'Chatterino7'

$packageArgs = @{
  packageName   = $packagename
  fileType      = 'EXE'
  softwareName  = 'Chatterino7*'
  file			= $fileLocation
  validExitCodes= @(0)
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS="!vcredist"'
  checksum      = 'C19426280B5B09680080646DF45DB528197A7F1F89705B4FB223C21748CFE144'
  checksumType  = 'sha256'
}

Install-ChocolateyInstallPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino7.lnk" -TargetPath "C:\Program Files\Chatterino7\chatterino.exe"