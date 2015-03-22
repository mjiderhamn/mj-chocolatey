$basename = "resin"
$name = "$basename-$env:chocolateyPackageVersion"

$installPath = (Join-Path (Get-BinRoot) $name)
if (Test-Path $installPath) {
    Remove-Item -Force -Recurse $installPath
}
