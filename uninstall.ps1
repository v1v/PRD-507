echo "Getting product code"
$ProductCode = Get-WmiObject win32_product -Filter "Name='CloudBees Jenkins Team 2.138.3'" | Select-Object -Expand IdentifyingNumber
echo "removing Product"
& msiexec /x /quiet /qb $ProductCode | Out-Null
echo "uninstallation finished"
