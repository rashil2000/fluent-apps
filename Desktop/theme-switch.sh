current=$(xfconf-query -c xsettings -p /Net/ThemeName)

if [ $current = "Kali-Dark" ]; then
  # Light Theme

  # Wallpaper
  xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVNC-0/workspace0/last-image -s /usr/share/backgrounds/kali-16x9/kali-small-logo.png

  # Icons
  xfconf-query -c xsettings -p /Net/IconThemeName -s Flat-Remix-Blue-Light

  # System
  xfconf-query -c xsettings -p /Net/ThemeName -s Kali-Light

  # Window Manager
  xfconf-query -c xfwm4 -p /general/theme -s Kali-Light

  # Lockscreen
  sudo sed -i -e 's/Kali-Dark/Kali-Light/g' /etc/lightdm/lightdm-gtk-greeter.conf
  sudo sed -i -e 's/Flat-Remix-Blue-Dark/Flat-Remix-Blue-Light/g' /etc/lightdm/lightdm-gtk-greeter.conf

  # Mousepad
  gsettings set org.xfce.mousepad.preferences.view color-scheme Kali-Light

  # Firefox
  sed -i -e 's/141e24/FFFFFF/g' ~/.mozilla/firefox/9xtl5lta.default-esr/chrome/userContent.css
  sed -i -e 's/darkslategrey/#FFFFFE/g' ~/.mozilla/firefox/9xtl5lta.default-esr/chrome/userContent.css

  # VIm
  sed -i -e 's/\"dark\"/\"light\"/g' ~/.config/nvim/init.vim
  sed -i -e 's/\"ayu_dark\"/\"ayu_light\"/g' ~/.config/nvim/init.vim

  # Bashtop
  sed -i -e 's/flat-remix-dark/flat-remix-light/g' ~/.config/bashtop/bashtop.cfg

  # Spotify-TUI
  sed -i -e 's/Cyan/Blue/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/Gray/DarkGray/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/White/Black/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/Magenta/Green/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/\"255, 255, 255\"/\"0, 0, 0\"/g' ~/.config/spotify-tui/config.yml

else
  # Dark Theme

  # Wallpaper
  xfconf-query -c xfce4-desktop -p /backdrop/screen0/monitorVNC-0/workspace0/last-image -s /usr/share/backgrounds/kali-16x9/kali-small-neon.png

  # Icons
  xfconf-query -c xsettings -p /Net/IconThemeName -s Flat-Remix-Blue-Dark

  # System
  xfconf-query -c xsettings -p /Net/ThemeName -s Kali-Dark

  # Window Manager
  xfconf-query -c xfwm4 -p /general/theme -s Kali-Dark

  # Lockscreen
  sudo sed -i -e 's/Kali-Light/Kali-Dark/g' /etc/lightdm/lightdm-gtk-greeter.conf
  sudo sed -i -e 's/Flat-Remix-Blue-Light/Flat-Remix-Blue-Dark/g' /etc/lightdm/lightdm-gtk-greeter.conf

  # Mousepad
  gsettings set org.xfce.mousepad.preferences.view color-scheme Kali-Dark

  # Firefox
  sed -i -e 's/FFFFFF/141e24/g' ~/.mozilla/firefox/9xtl5lta.default-esr/chrome/userContent.css
  sed -i -e 's/#FFFFFE/darkslategrey/g' ~/.mozilla/firefox/9xtl5lta.default-esr/chrome/userContent.css

  # VIm
  sed -i -e 's/\"light\"/\"dark\"/g' ~/.config/nvim/init.vim
  sed -i -e 's/\"ayu_light\"/\"ayu_dark\"/g' ~/.config/nvim/init.vim

  # Bashtop
  sed -i -e 's/flat-remix-light/flat-remix-dark/g' ~/.config/bashtop/bashtop.cfg

  # Spotify-TUI
  sed -i -e 's/Blue/Cyan/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/DarkGray/Gray/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/Black/White/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/Green/Magenta/g' ~/.config/spotify-tui/config.yml
  sed -i -e 's/\"0, 0, 0\"/\"255, 255, 255\"/g' ~/.config/spotify-tui/config.yml

fi
