Stop-Process -Name discord -Force
Remove-Item "C:\Users\$env:UserName\AppData\Roaming\discord\Cache\*"
cd "C:\Users\$env:UserName\AppData\Roaming\BetterDiscord\themes"
iwr -Uri https://raw.githubusercontent.com/OlaYZen/BetterDiscordAddons/master/Rounded.theme.css -OutFile Rounded.theme.css
Start-Process "C:\Users\$env:UserName\AppData\Local\Discord\app-1.0.9007\discord.exe" & exit 