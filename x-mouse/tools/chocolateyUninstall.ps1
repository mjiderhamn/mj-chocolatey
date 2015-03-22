$registryName = "X-Mouse Button Control"
$silentArgs = '/S'

# Find the uninstall string in the Registry
function GetUninstallString([string]$RegistryName) {
  $is64bit = ([environment]::Is64BitOperatingSystem) -match 'True'

  If ($is64bit) {
    $UninstallRegistryPath = 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\'
  }
  Else {
    $UninstallRegistryPath = 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\'
  }

  $UninstallRegistryPath += $registryName
  
  return (Get-ItemProperty -path $UninstallRegistryPath -name 'UninstallString').UninstallString
}

Uninstall-ChocolateyPackage '$chocolateyPackageName' 'exe' $silentArgs (GetUninstallString "$registryName")