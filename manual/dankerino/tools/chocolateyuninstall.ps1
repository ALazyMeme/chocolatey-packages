Remove-Item -Path "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)\Dankerino" -Force -Recurse
Remove-Item -Path "$env:USERPROFILE\Desktop\Dankerino.lnk" -Force