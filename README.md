# add into main pwsh profile
powershell ``` 
$profileLocation = "$home/.config/pwsh-profile.ps1"
Invoke-Expression (Get-Content -Path $profileLocation -Raw)
``` 
