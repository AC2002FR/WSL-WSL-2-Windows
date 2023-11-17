@echo off
echo Installing WSL 2 and Kali Linux on Windows...

REM Enable WSL feature
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

REM Enable the Virtual Machine Platform feature
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

REM Set WSL 2 as the default version
wsl --set-default-version 2

REM Download and install Kali Linux
curl -L -o kalilinux.appx https://aka.ms/wsl-kali-linux
PowerShell -Command "Add-AppxPackage -Path kalilinux.appx"

echo Installation complete. Restart your computer to finalize the installation.
