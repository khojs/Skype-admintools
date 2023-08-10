
$server = $env:computername 
$object = Get-service -ComputerName sfb  | where {($_.name -like "MSSQL$*" -or $_.name -like "MSSQLSERVER" -or $_.name -like "SQL Server (*") }
if ($object)
{
$instDetails= $object |select Name,Status
$instDetails
}else
{
Write-Host "0 SQL Server instances discovered"
}