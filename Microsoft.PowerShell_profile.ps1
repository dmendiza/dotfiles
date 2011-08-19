# Set default location to Workspaces
Set-Location $env:WORKSPACES

# Aliases
Set-Alias npp "C:\Program Files (x86)\Notepad++\notepad++.exe"
Set-Alias vi "C:\Program Files (x86)\Vim\vim73\vim.exe"
Set-Alias which Get-Command

# sudo
function Elevate-Process
{
    $file, [string]$arguments = $args;
    $psi = New-Object System.Diagnostics.ProcessStartInfo $file;
    $psi.Arguments = $arguments;
    $psi.Verb = "runas";
    $psi.WorkingDirectory = Get-Location;
    [System.Diagnostics.Process]::Start($psi);
}
Set-Alias sudo Elevate-Process;