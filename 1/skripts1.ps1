$dators = $env:COMPUTERNAME
$psver = $PSVersionTable.PSVersion
$time = Get-Date -Format "dd/MM/yyyy HH:mm:ss"
$os = Get-CimInstance Win32_OperatingSystem
$processc = (Get-Process).Count
Write-Output ("`nDatora nosaukums: " + $dators,
 "`nOS Versija: " + $os.Version,
 "`nBūvējuma numurs: " + $os.BuildNumber,
 "`nPowerShell Versija: " + $psver,
 "`nLaiks: " + $time,
 "`nProcesu skaits: " + $processc) > izvade.txt