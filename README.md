## PowerShell version 7 (cross-platform) Configuration


- Install PowerShell 7 first
- Install scoop "the missing windows Package Manager"

```powershell
# install latest PowerShell 7 (cross-platform)
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"

# install scoop for windows package manager
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop --version 

scoop install 7zip 
scoop install git 
scoop install sudo 
scoop install azure-cli 

# must add extras for GUI tools like vscode and Google chrome 
scoop bucket add extras
scoop install googlechrome vscode
```


# Git Clone this repo (only works for PowerShell 7)
copy and paste profile-setup function from the link and run on your terminal, then reload 
- [run profile-setup from this link ](https://dev.azure.com/superusers-kursus/_git/PowerShell?path=%2Fprofile%2Findex.ps1&version=GBmaster&line=15&lineEnd=34&lineStartColumn=1&lineEndColumn=2&lineStyle=plain&_a=contents)




# start using profile- and tap for auto-complete
```
profile-info
profile-setup
profile-edit
```


# Optional Configuration to Azure environment and subscription

### setup environment, then subscription and secret and key management
```
env-set azure-env            'Development | Test | Prod'
env-set azure-subscription   'subscription for dev, test, prod'
env-set azure-keyvault       'azure keyvault to manage secrets and keys' 
```



