Get-CimInstance Win32_LogicalDisk | ForEach-Object {
    $freeGB = [math]::Round($_.FreeSpace/1024/1024/1024, 2)
    $_.DeviceID,("Kopā: " + [math]::Round($_.Size/1024/1024/1024, 2) + " GB"),"Brīvs: $freeGB GB"
    if ($freeGB -lt 2000) { Write-Output("BRĪDINĀJUMS: Diskam "+ $_.DeviceID + " maz vietas!")}
} > izvade.txt
