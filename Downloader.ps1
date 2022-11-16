Stop-Process -Name discord -Force
Start-Sleep -Seconds 3
Remove-Item "C:\Users\$env:UserName\AppData\Roaming\discord\Cache\*"
Start-Sleep -Seconds 1
Set-Location "C:\Users\$env:UserName\AppData\Roaming\BetterDiscord\themes"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/OlaYZen/BetterDiscordAddons/master/Rounded.theme.css -OutFile Rounded.theme.css
Start-Sleep -Seconds 1
clear-Host
Start-Process "C:\Users\$env:UserName\AppData\Local\Discord\app-1.0.9007\discord.exe" & exit 