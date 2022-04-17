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
  checksum      = '8819A625344B347B7CAAFB91443087A1C464B776EE304EC2F87EFA138555B020'
  checksumType  = 'sha256'
}

Install-ChocolateyInstallPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino.lnk" -TargetPath "C:\Program Files\Chatterino\chatterino.exe"