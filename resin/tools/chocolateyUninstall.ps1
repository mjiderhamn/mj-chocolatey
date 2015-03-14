$basename = "resin"
$version = '4.0.40'
$name = "$basename-$version"

$installPath = (Join-Path (Get-BinRoot) $name)
if (Test-Path $installPath) {
    Remove-Item -Force -Recurse $installPath
}
