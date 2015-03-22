$url = "http://www.highrez.co.uk/scripts/download.asp?package=XMouse"
$silentArgs = '/S' # Silent install

Install-ChocolateyPackage "$chocolateyPackageName" "exe" "$silentArgs" "$url"