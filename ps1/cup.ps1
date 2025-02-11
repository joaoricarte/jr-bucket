# Check if running as Administrator
if (-not [Security.Principal.WindowsPrincipal]([Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    # Relaunch as Administrator
    Start-Process PowerShell -ArgumentList "-ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Upgrade all Chocolatey packages
choco upgrade all -y

# Run choco-cleaner script
& 'C:\tools\BCURRAN3\choco-cleaner.ps1' %*
# Prevent window from closing
Read-Host "Press Enter to exit"
