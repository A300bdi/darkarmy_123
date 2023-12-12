# File: C:\Path\To\Your\Bucket\bin\wireshark.ps1

# Define variables
$installerUrl = 'https://1.eu.dl.wireshark.org/win64/Wireshark-4.2.0-x64.exe'
$installerPath = Join-Path $env:TEMP 'Wireshark-Installer.exe'

# Download the installer
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Install Wireshark silently
Start-Process -FilePath $installerPath -ArgumentList '/S' -Wait

# Cleanup: Remove the installer
Remove-Item $installerPath -Force
