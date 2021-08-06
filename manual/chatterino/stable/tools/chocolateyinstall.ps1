$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Join-Path $toolsDir 'chatterino-installer.exe'
$packagename  = 'Chatterino'

$packageArgs = @{
  packageName   = $packagename
  fileType      = 'EXE'
  softwareName  = 'Chatterino*'
  file			= $fileLocation
  validExitCodes= @(0)
  silentArgs    = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /MERGETASKS="!vcredist"'
  checksum      = 'C19426280B5B09680080646DF45DB528197A7F1F89705B4FB223C21748CFE144'
  checksumType  = 'sha256'
}

Install-ChocolateyInstallPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino.lnk" -TargetPath "C:\Program Files\Chatterino\chatterino.exe"