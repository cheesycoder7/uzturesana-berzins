$drivers = Get-CimInstance Win32_PnPSignedDriver | Where-Object { $_.Manufacturer -ne 'Microsoft' }
$drivers | Export-Csv -Path "drivers.csv"
$rowCount = ($drivers.Count) + 1
Write-Output "CSV rindu skaits: $rowCount" > izvade.txt
