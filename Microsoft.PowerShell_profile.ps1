# Aliases

Set-Alias which Get-Command

Set-Alias npp "C:\Program Files (x86)\Notepad++\notepad++.exe"
Set-Alias python3 "C:\Program Files\Python33\python.exe"
Set-Alias pip3 "C:\Program Files\Python33\Scripts\pip.exe"
Set-Alias vi "C:\Program Files (x86)\Vim\vim73\vim.exe"

# Environment Variables

$env:Path += ";C:\Program Files\Python33;C:\Program Files\Python33\Scripts"
$env:Path += ";C:\Program Files (x86)\IronPython 2.7"
$env:Path += ";C:\Program Files\Java\jython2.7a2"

# $env:JAVA_HOME = "C:\Program Files\Java\jdk1.7.0_11"

# $env:M2_HOME = "C:\Program Files (x86)\Java\springsource\apache-maven-3.0.4"
$env:M2 = $env:M2_HOME + "\bin"
$env:Path = $env:Path + ";" + $env:M2

$env:Path += ";C:\Program Files (x86)\Java\android-sdk-windows\platform-tools"
$env:Path += ";C:\Program Files (x86)\Java\android-sdk-windows\tools"

$env:Path += ";C:\Program Files (x86)\Java\scala-2.10.0\bin"

$env:Path += ";C:\Program Files (x86)\Java\groovy-2.0.6\bin"

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

# If Posh-Git environment is defined, load it.
if (test-path env:posh_git) {
    . $env:posh_git
    Write-Host "Posh-Git environment loaded."
}