# Aliases
Set-Alias npp "C:\Program Files (x86)\Notepad++\notepad++.exe"
Set-Alias vi "C:\Program Files (x86)\Vim\vim73\vim.exe"
Set-Alias which Get-Command

# Set environment variables for Visual Studio Command Prompt
pushd "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC"
cmd /c "vcvarsall.bat&set" |
foreach {
    if ($_ -match "=") {
        $v = $_.split("="); Set-Item -force -path "env:\$($v[0])" -value "$($v[1])"
    }
}
popd
Write-Host "Visual Studio 2012 Command Prompt variables set."

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