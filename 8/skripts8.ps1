$time1 = Measure-Command {Get-Service -Name "Spooler"}
$time2 = Measure-Command {Get-CimInstance Win32_Service -Filter "Name='Spooler'"}
Write-Output("Get-Service laiks: " + $time1.TotalMilliseconds + "ms" , "Get-CimInstance laiks: " + $time2.TotalMilliseconds + "ms") > izvade.txt
