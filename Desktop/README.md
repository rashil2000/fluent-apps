# Desktop

## Widgets

This can be made using [Rainmeter](https://www.rainmeter.net/), a desktop customization tool for Windows. This Reddit [thread](https://www.reddit.com/r/Rainmeter/comments/eva9on/my_take_in_minimalism/) explains how.

The taskbar icons are centered using [TaskbarX](https://chrisandriessen.nl/taskbarx).

![Rainmeter Widgets](rainmeter-widgets.jpg)

If this is too much work, just press Windows key + G to open up the Game Bar to have a peek at the stats.

![Game Bar](gamebar.png)

## Wallpapers

Windows Spotlight offers some unbelievably great looking wallpapers that refresh daily. However, curently Settings only provide the option to set the lockscreen as Spotlight wallpaper. Upcoming releases will have the option to set Spotlight as desktop backgrounds too. Meanwhile, [Spotlight Desktop](https://wallpaper.onlineth.com/) can be used to automatically synchronize desktop wallpaper with the Spotlight lockscreen in the background.

If you're better off just downloading some wallpapers, check out this awesome website that has thousands of eye-popping wallpapers: [WallpaperHub](https://wallpaperhub.app/). Microsoft Design also has its own [collection](https://wallpapers.microsoft.design/) of top notch and high quality wallpapers. Here's a peek at WallpaperHub:

![WallpaperHub](wallpaperhub.png)

## Theme and Colours

The system-wide theme can be switched from Settings.

Make sure to check the 'Choose accent colour automatically' option (it's not checked here for some reason) and the 'Transparency effects' option.

![Colors - Settings](color-settings.png)

The theme can be automatically changed from Light to Dark and back to Light, depending on the time, using this nifty tool [Windows-Auto-Night-Mode](https://github.com/Armin2208/Windows-Auto-Night-Mode). It even changes the Office theme and applies custom `.theme` files if you have those.

![Auto Switcher](auto-switcher.png)

If you're familiar with a bit of PowerShell, there's a `ThemeSwitch.ps1` script here that changes wallpapers, system theme, app theme, and themes of some apps (Windows Terminal, VS Code, NeoVim). You can set a custom shortcut calling this script and place it on your Desktop to enable switching with just a click. Modify the file to suit your needs.

On the off chance you're on Linux, the script `theme-switch.sh` can be used to make similar changes in Xfce desktop environment, and some other apps (Vim, FireFox, Spotify-TUI, Bashtop). Again, some modification would be necessary.

## PowerToys

[PowerToys](https://github.com/microsoft/powertoys) by Microsoft is an awesome set of utilities designed to add useful little features to aid in daily usage. Here are some screenshots of the tools I use.

. | .
:-: | :-:
Main Settings | Shortcut Guide
![PowerToys](powertoys.png) | ![Shortcut Guide](shortcut-guide.png)
Color Picker | Conference Mute
![Color Picker](color-picker.png) | ![Conference Mute](conference-mute.png)
Fancy Zones | PT Run
![Fancy Zones](fancy-zones.png) | ![PT Run](pt-run.png)
