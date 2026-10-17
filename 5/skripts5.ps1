$time = (Get-Date).AddHours(-48)
$errors = Get-WinEvent -FilterHashtable @{Level = 2; LogName = "System"; StartTime = $time} -ErrorAction SilentlyContinue
$totale = $errors.Count
$toperr = $errors | Group-Object ProviderName | Sort-Object Count | Select-Object -Last 1
$toperrs = $toperr.Name
$toperrc = $toperr.Count
Write-Output("Kļūdas kopā: $totale","Biežākais kļūdas avots: $toperrs","Biežāko kļūdu skaits: $toperrc") > izvade.txt
