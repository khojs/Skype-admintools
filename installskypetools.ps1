$string3 = "This script will install Skype Admin Tools"
Write-Host $string3
Write-Host Installing VC redistribution Package 2013
Start-Process C:\tools\vcredist_x64.exe /passive
$string = "Installing VCredist_64"
Write-Host $string
for ($i = 1; $i -le 100; $i++ ) {
    Write-Progress -Activity "Installing VC redistribution Package 2013" -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -milliseconds 100
}
Write-Host Installing Core Components 
Start-Process C:\tools\ocscore.msi /passive
for ($i = 1; $i -le 100; $i++ ) {
    Write-Progress -Activity "Installing Core Components" -Status "$i% Complete:" -PercentComplete $i
    Start-Sleep -milliseconds 300
}
$string1 = "Installing Skype Admin Tools"
Write-Host $string1 
start-process C:\tools\admintools.msi /passive
for ($i = 1; $i -le 100; $i++ ) {
    Write-Progress -Activity "Installing Skype Admin tools" -Status "$i% Complete:" -PercentComplete $i 
    Start-Sleep -milliseconds 400
}
$string2 = "Please check logs and Skype admin tools"
Write-Host $string2 -ForegroundColor Green