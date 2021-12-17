$printerIPaddress = "192.168.0.200"

$printerName = "Test Printer"

$portName = "TCPPort:192.168.0.200"

$printDriverName = "Generic / Text Only"


$portExists = Get-Printerport -Name $portname -ErrorAction SilentlyContinue
if (-not $portExists) {
  Add-PrinterPort -name $portName -PrinterHostAddress $printerIPaddress
}
$printDriverExists = Get-PrinterDriver -name $printDriverName -ErrorAction SilentlyContinue
if ($printDriverExists) {
    Add-Printer -Name $printerName -PortName $portName -DriverName $printDriverName
}else{
    Write-Warning "Printer Driver not installed"
}