# This script sets up np.ps1 for global use by copying it to a user scripts directory and updating the PATH if needed.
# Usage: Run this script from the project folder containing np.ps1

$scriptName = "np.ps1"
$cmdName = "np.cmd"
$userScripts = "$env:USERPROFILE\scripts"
$source = Join-Path $PSScriptRoot $scriptName
$dest = Join-Path $userScripts $scriptName
$cmdDest = Join-Path $userScripts $cmdName

# Create scripts directory if it doesn't exist
if (!(Test-Path $userScripts)) {
    New-Item -ItemType Directory -Path $userScripts | Out-Null
}

# Copy np.ps1 to scripts directory
Copy-Item $source $dest -Force

# Create a wrapper batch file for easy calling
$cmdContent = 'powershell -ExecutionPolicy Bypass -File "%~dp0np.ps1" %*'
Set-Content -Path $cmdDest -Value $cmdContent


# Add scripts directory to user PATH if not already present (persistent)
$envPath = [System.Environment]::GetEnvironmentVariable("PATH", "User")
if (-not ($envPath -split ";" | Where-Object { $_ -eq $userScripts })) {
    [System.Environment]::SetEnvironmentVariable("PATH", "$envPath;$userScripts", "User")
    Write-Host "Added $userScripts to your user PATH. You may need to restart your terminal."
} else {
    Write-Host "$userScripts is already in your PATH."
}

# Add scripts directory to current session PATH if not already present
if (-not ($env:PATH -split ";" | Where-Object { $_ -eq $userScripts })) {
    $env:PATH = "$env:PATH;$userScripts"
    Write-Host "Added $userScripts to your current session PATH."
} else {
    Write-Host "$userScripts is already in your current session PATH."
}

Write-Host "np is now globally available. You can call it from any folder:"
Write-Host "np -name my_new_project -description 'My new D project'"
