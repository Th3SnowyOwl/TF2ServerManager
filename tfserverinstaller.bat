@echo off
echo "Default install directory is c:\servers\hlserver\"
pause
C:
cd C:\
mkdir servers
cd servers
mkdir hlserver
cd hlserver
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/start.bat
curl -O https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip
powershell -command "Expand-Archive c:\servers\hlserver\steamcmd.zip c:\servers\hlserver"
del steamcmd.zip
cmd.exe /c steamcmd.exe
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/update.bat
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/tf2_ds.txt
cmd.exe /c update.bat
cd "C:\servers\hlserver\tfserver\tf"
curl -O https://mms.alliedmods.net/mmsdrop/1.11/mmsource-1.11.0-git1148-windows.zip
curl -O https://sm.alliedmods.net/smdrop/1.11/sourcemod-1.11.0-git6926-windows.zip
powershell -command "Expand-Archive \"C:\servers\hlserver\tfserver\tf\mmsource-1.11.0-git1148-windows.zip\" \"C:\servers\hlserver\tfserver\tf\""
powershell -command "Expand-Archive \"C:\servers\hlserver\tfserver\tf\sourcemod-1.11.0-git6926-windows.zip\" \"C:\servers\hlserver\tfserver\tf\""
del Metamod.zip
del Sourcemod.zip
cd addons\Sourcemod\configs
del admins.cfg
del admins_simple.ini
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/admins_simple.ini
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/admins.cfg
cd C:\servers\hlserver\tfserver\tf\cfg
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/server.cfg
cd C:\servers\hlserver\tfserver\tf\
curl -o tf2items.zip https://builds.limetech.io/files/tf2items-1.6.4-hg279-windows.zip
powershell -command "Expand-Archive \"C:\servers\hlserver\tfserver\tf\tf2items.zip\" \"C:\servers\hlserver\tfserver\tf\""
cd C:\servers\hlserver\tfserver\
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/Launcher.txt
rename Launcher.txt Launcher.lnk
cd C:\servers\hlserver\
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/start.txt
rename start.txt start.lnk
cd C:\Users\%username%\Desktop\
curl -O https://raw.githubusercontent.com/Th3SnowyOwl/tf2installercdn/main/start.txt
rename start.txt start.lnk
cls
echo "Your tf2 server is installed! Please edit the admins file unless you want me to be an admin ;>"
pause
exit
