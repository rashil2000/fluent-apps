if ((Get-Location).Path -like 'C:\WINDOWS*') { Set-Location ~ }
Import-Module Get-ChildItemColor
Set-Alias -Name TS -Value D:\Data\Projects\Scripts\ThemeSwitch.ps1 -Description "The 'TS' alias switches the current theme system wide, including user apps and changes the wallpaper."
Remove-Item -Path Alias:ls
Function ll {lsd -Al --group-dirs first --total-size @Args}
Function ls {lsd -A --group-dirs first @Args}
Set-Theme Powerlevel9k
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd
Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward
Set-PSReadLineKeyHandler -Key Ctrl+LeftArrow -Function BackwardWord
Set-PSReadLineKeyHandler -Key Ctrl+RightArrow -Function ForwardWord

# Import-Module "PowerTab" -ArgumentList "C:\Users\RashilGandhi\Documents\WindowsPowerShell\PowerTabConfig.xml"
