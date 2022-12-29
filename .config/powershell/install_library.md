**SCOOP**
```

iwr -useb get.scoop.sh | iex

scoop install curl sudo jq

```

**NEOVIM**
```

scoop install neovim gcc
```


**config**

```
mkdir .config/powershell

nvim .config/powershell/user_profile.ps1

```

**set Profile:** 

```

. $env:USERPROFILE\.config\powershell\user_profile.ps1

```

nvim $PROFILE.CurrentUserCurrentHost


**Oh my posh**

Install-Module posh-git -Scope CurrentUser -Force

Install-Module oh-my-posh -Scope CurrentUser -Force

oh-my-posh --init --shell pwsh --config \.huutri.omp.json | Invoke-Expression


// Terminal-Icons - z - PSReadLine(Autocompletion) -fzf

Install-Module -Name Terminal-Icons -Repository PSGallery -Force

Install-Module -Name z -Force

Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser

scoop install fzf

Install-Module -Name PSFzf -Scope CurrentUser -Force



