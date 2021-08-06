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
  checksum      = 'A0D1C47936BE460CC8E830BE8B29CE1BC54B700EE76976E35BE72A877F2F68D5'
  checksumType  = 'sha256'
}

Install-ChocolateyInstallPackage @packageArgs
Install-ChocolateyShortcut -ShortcutFilePath "$env:USERPROFILE\Desktop\Chatterino7.lnk" -TargetPath "C:\Program Files (x86)\Chatterino7\chatterino.exe"