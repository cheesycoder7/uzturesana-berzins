$servisi = Get-Service | Where-Object {$_.StartType -eq "Automatic" -and $_.Status -eq "Stopped"}
if ($null -eq $servisi){
    Write-Output(0) > izvade.txt
}
else{
    $servisi | Start-Service *> izvade.txt
}
