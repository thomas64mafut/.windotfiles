$modulesToInstall = @("Terminal-Icons", "PSFzf", "PSReadLine", "z")
foreach ($module in $modulesToInstall) {
    try {
        Import-Module $module -ErrorAction Stop
    } catch {
        Write-Host "Module $module does not exist. Installing..."
        Install-Module -Name $module -Scope CurrentUser
    }
}

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Autocompletion for arrow keys
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

function sudo {
  param([ScriptBlock]$code)
  Start-Process -FilePath powershell.exe -Verb RunAs -ArgumentList $code
}

Invoke-Expression (&starship init powershell)