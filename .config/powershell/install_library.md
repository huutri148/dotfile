## Toolset
- [Oh my posh](https://ohmyposh.dev/)
- [z](https://www.powershellgallery.com/packages/z/1.1.13)
- [fzf](https://www.powershellgallery.com/packages/z/1.1.13)
- [neovim](https://neovim.io/)
- [PSReadLine](https://github.com/PowerShell/PSReadLine)
- [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
- [Window Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701?hl=vi-vn&gl=vn)
- [Nerd Font](https://www.nerdfonts.com/)



1. ##### Install scoop
`iwr -useb get.scoop.sh | iex`
`scoop install curl sudo jq`

2. ##### Install Neovim
`scoop install neovim gcc`

3. ##### Specific config folder
`mkdir .config/powershell`
`nvim $PROFILE.CurrentUserCurrentHost`

> Use the content in **user_profile.ps1** in the repository and paste with the current **UserProfile**

4. ##### Install Oh my posh
`scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json`

5. ##### Install Terminal-Icons
`Install-Module -Name Terminal-Icons -Repository PSGallery -Force`

6. ##### Install z
`Install-Module -Name z -Force`

7. ##### Install PSReadLine
`Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser`

8. #### Install fzf
`scoop install fzf`
`Install-Module -Name PSFzf -Scope CurrentUser -Force`


