$services = Get-Service
$darb = 0
$aptur = 0

foreach($s in $services){
    if($s.Status -eq "Running"){
        $darb += 1
    }
    elseif ($s.Status -eq "Stopped"){
        $aptur += 1
    }
}
$kopa = $darb + $aptur
Write-Output ("Servisu skaits: ", "$darb Aktīvi servisi", "$aptur Apturēti servisi", "$kopa Servisi kopā") > izvade.txt
