$url = "https://cdn.rawgit.com/mjiderhamn/mj-chocolatey/a705fc639f543700afe05d650d66e380c16a5ffc/windowpadx/WindowPadX.exe"
$md5checksum = "d8f0dbda3bcdc751dee257900db081e8"

$exePath = Join-Path $env:chocolateyPackageFolder 'WindowPadX.exe'

Get-ChocolateyWebFile $env:chocolateyPackageName $exePath $url -checksum $md5checksum -checksumType "md5"