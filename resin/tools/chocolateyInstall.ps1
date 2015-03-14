$basename = "resin"
$version = '4.0.40'
$name = "$basename-$version"
$url = "http://www.caucho.com/download/$name.zip"
$binRoot = Get-BinRoot

#create folder if not exists
function CreateFolder ([string]$Path) {
  New-Item -Path $Path -type directory -Force
}

CreateFolder($binRoot)

Install-ChocolateyZipPackage 'resin-pro' $url $binRoot