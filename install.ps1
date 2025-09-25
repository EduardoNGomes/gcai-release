$Bin = "gcai-windows.exe"
$InstallPath = "$env:USERPROFILE\bin"

if (!(Test-Path $InstallPath)) {
    New-Item -ItemType Directory -Path $InstallPath | Out-Null
}

$Target = Join-Path $InstallPath "gcai.exe"

if (Test-Path $Target) {
    Write-Output "$Bin already exists, updating..."
} else {
    Write-Output "Installing $Bin in $InstallPath..."
}

Copy-Item $Bin $Target -Force
Write-Output "✅ $Bin installed successfully!"

if (-not ($env:Path -like "*$InstallPath*")) {
    [Environment]::SetEnvironmentVariable(
        "Path",
        $env:Path + ";" + $InstallPath,
        [EnvironmentVariableTarget]::User
    )
    Write-Output "🔧 Added $InstallPath to PATH. Restart your terminal."
}
