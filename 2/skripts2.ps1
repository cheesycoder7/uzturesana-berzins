Get-Process | Sort-Object WorkingSet | Select-Object -Property ProcessName, Id, @{Name="WorkingSet(MB)"; Expression={[math]::Round($_.WorkingSet/1024/1024, 1)}} -Last 10 > izvade.txt
