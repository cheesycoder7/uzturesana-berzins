$processes = Get-WmiObject Win32_Process
$pnameuser = foreach ($p in $processes) {
    Write-Output("Process: " + $p.Name , "Lietotājs: " + $p.GetOwner().User)
}
$pnameuser > izvade.txt
