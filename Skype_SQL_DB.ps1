
$server = $env:computername 
$object = Get-service -ComputerName $server | where {($_.name -like "MSSQL$*" -or $_.name -like "MSSQLSERVER" -or $_.name -like "SQL Server (*") }
if ($object)
{
$instDetails= $object |select Name,Status
$instDetails
}else
{
Write-Host "       Zero(0) SQL Server instances discovered" -ForegroundColor Green
}