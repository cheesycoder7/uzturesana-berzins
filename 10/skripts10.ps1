$processc = (Get-Process).Count
$darb = 0
$aptur = 0
foreach($s in Get-Service){
    if($s.Status -eq "Running"){
        $darb += 1
    }
    elseif ($s.Status -eq "Stopped"){
        $aptur += 1
    }
}
$time = (Get-Date).AddHours(-48)
$errors = Get-WinEvent -FilterHashtable @{Level = 2; LogName = "System"; StartTime = $time} -ErrorAction SilentlyContinue
$freeGB = [math]::Round((Get-CimInstance Win32_LogicalDisk | Measure-Object -Property FreeSpace -Sum).Sum/1024/1024/1024, 2)
Write-Output("Procesu skaits: " + $processc,"Aktīvo servisu skaits: " + $darb,"Apstādināto servisu skaits: " + $aptur,"Kļūdu skaits sistēmas žurnālā (48h): " + $errors.Count,"Brīvā vieta (starp visiem diskiem): " + $freeGB + "GB") > izvade.txt
