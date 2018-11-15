echo "Getting product code"
$ProductCode = Get-WmiObject win32_product -Filter "Name='CJP Operations Center 2.138.3'" | Select-Object -Expand IdentifyingNumber
echo "removing Product"
& msiexec /x $ProductCode | Out-Null
echo "uninstallation finished"
