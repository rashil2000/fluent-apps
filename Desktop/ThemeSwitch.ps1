Add-Type -TypeDefinition @"
using System;
using System.Runtime.InteropServices;

public class DeskWall
{
  [DllImport("User32.dll", CharSet=CharSet.Unicode)]
  public static extern int SystemParametersInfo (Int32 uAction, Int32 uParam, String lpvParam, Int32 fuWinIni);
}
"@

$ThemeRegistry = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize'
$WTSettings = 'C:\Users\RashilGandhi\AppData\Local\Microsoft\Windows Terminal\settings.json'
$VSCSettings = 'C:\Users\RashilGandhi\AppData\Roaming\Code\User\settings.json'
$NVSettings = 'C:\Users\RashilGandhi\AppData\Local\nvim\init.vim'

$CheckWall = Get-ItemProperty `
  -Path 'HKCU:\Control Panel\Desktop\' `
  -Name WallPaper
$CheckTheme = Get-ItemProperty `
  -Path $ThemeRegistry `
  -Name AppsUseLightTheme

if (!$CheckTheme.AppsUseLightTheme) {
  # Wallpaper
  if ($CheckWall.WallPaper -ne 'D:\Data\Pictures\Wallpapers\WindowsLight.jpg') {
    [DeskWall]::SystemParametersInfo(0x0014, 0, 'D:\Data\Pictures\Wallpapers\WindowsLight.jpg', 0x03) | Out-Null
  }

  # System
  Set-ItemProperty `
    -Path $ThemeRegistry `
    -Name SystemUsesLightTheme `
    -Value 1

  # Apps
  Set-ItemProperty `
    -Path $ThemeRegistry `
    -Name AppsUseLightTheme `
    -Value 1

  # WTerminal
  Set-Content `
    -Path $WTSettings `
    -Value (Get-Content $WTSettings).Replace('"theme": "dark"', '"theme": "light"')
  Set-Content `
    -Path $WTSettings `
    -Value (Get-Content $WTSettings).Replace('"colorScheme": "BlulocoDark"', '"colorScheme": "BlulocoLight"')
  Set-Content `
    -Path $WTSettings `
    -Value (Get-Content $WTSettings).Replace('"colorScheme": "Builtin Dark"', '"colorScheme": "Builtin Light"')

  # VSCode
  Set-Content `
    -Path $VSCSettings `
    -Value (Get-Content $VSCSettings).Replace('"workbench.colorTheme": "Bluloco Dark Italic"', '"workbench.colorTheme": "Bluloco Light Italic"')
  Set-Content `
    -Path $VSCSettings `
    -Value (Get-Content $VSCSettings).Replace('"vscode_vibrancy.theme": "Dark (Only Subbar)"', '"vscode_vibrancy.theme": "Light (Only Subbar)"')

  # NVim
  Set-Content `
    -Path $NVSettings `
    -Value (Get-Content $NVSettings).Replace('ayucolor="dark"', 'ayucolor="light"')
  Set-Content `
    -Path $NVSettings `
    -Value (Get-Content $NVSettings).Replace('g:airline_theme="ayu_dark"', 'g:airline_theme="ayu_light"')
}
else {
  # Wallpaper
  if ($CheckWall.WallPaper -ne 'D:\Data\Pictures\Wallpapers\WindowsDark.jpg') {
    [DeskWall]::SystemParametersInfo(0x0014, 0, 'D:\Data\Pictures\Wallpapers\WindowsDark.jpg', 0x03) | Out-Null
  }

  # System
  Set-ItemProperty `
    -Path $ThemeRegistry `
    -Name SystemUsesLightTheme `
    -Value 0

  # Apps
  Set-ItemProperty `
    -Path $ThemeRegistry `
    -Name AppsUseLightTheme `
    -Value 0

  # WTerminal
  Set-Content `
    -Path $WTSettings `
    -Value (Get-Content $WTSettings).Replace('"theme": "light"', '"theme": "dark"')
  Set-Content `
    -Path $WTSettings `
    -Value (Get-Content $WTSettings).Replace('"colorScheme": "BlulocoLight"', '"colorScheme": "BlulocoDark"')
  Set-Content `
    -Path $WTSettings `
    -Value (Get-Content $WTSettings).Replace('"colorScheme": "Builtin Light"', '"colorScheme": "Builtin Dark"')

  # VSCode
  Set-Content `
    -Path $VSCSettings `
    -Value (Get-Content $VSCSettings).Replace('"workbench.colorTheme": "Bluloco Light Italic"', '"workbench.colorTheme": "Bluloco Dark Italic"')
  Set-Content `
    -Path $VSCSettings `
    -Value (Get-Content $VSCSettings).Replace('"vscode_vibrancy.theme": "Light (Only Subbar)"', '"vscode_vibrancy.theme": "Dark (Only Subbar)"')

  # NVim
  Set-Content `
    -Path $NVSettings `
    -Value (Get-Content $NVSettings).Replace('ayucolor="light"', 'ayucolor="dark"')
  Set-Content `
    -Path $NVSettings `
    -Value (Get-Content $NVSettings).Replace('g:airline_theme="ayu_light"', 'g:airline_theme="ayu_dark"')
}
