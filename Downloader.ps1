Write-Host "Stopping Discord"
Stop-Process -Name discord -Force
Start-Sleep -Seconds 3
Write-Host "Deleting Discord Cache"
Remove-Item "C:\Users\$env:UserName\AppData\Roaming\discord\Cache\*"
Start-Sleep -Seconds 1
Write-Host "Downloading newest verison of the theme"
Set-Location "C:\Users\$env:UserName\AppData\Roaming\BetterDiscord\themes"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/OlaYZen/BetterDiscordAddons/master/Rounded.theme.css -OutFile Rounded.theme.css
Start-Sleep -Seconds 1
Write-Host "Launching Discord"
Start-Process "C:\Users\$env:UserName\AppData\Local\Discord\app-1.0.9008\discord.exe" & exit 