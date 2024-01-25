# main pwsh - starship profile
- add into main pwsh profile
```
$profileLocation = "$home/.config/pwsh-profile.ps1"
Invoke-Expression (Get-Content -Path $profileLocation -Raw)
```
