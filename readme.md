## $PROFILE for PowerShell version 7


Before powershell.exe runs, the file named $profile must exist to configure your environments

The OpenSource community is using scoop as CLI with PowerShell to automate the installation process like linux

- [See a video on youtube Why Using Scoop on Windows ?](https://www.youtube.com/watch?v=Pj1PaZMzMz0)

```powershell
# install latest PowerShell 7 (cross-platform)
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"

# install scoop for windows package manager
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop --version 

scoop install 7zip 
scoop install git 
scoop install sudo 

# must add extras for GUI tools like vscode and Google chrome 
scoop bucket add extras
scoop install googlechrome
```

## profile-setup

```powershell
cd ${Env:USERPROFILE}\Documents

# if PowerShell directory exists deleted, then clone from repo

rm -R PowerShell

git clone https://superusers-kursus@dev.azure.com/superusers-kursus/PowerShell/_git/PowerShell

# must restart to read $profile configuration
exit

env-set azure-init           '1'
env-set azure-subscription   'din egen azure subscription her'
env-set azure-keyvault       'din egen azure keyvault angives her' 


# start powershell.exe 
profile-info
```


## profile-update

```
goto-home

git pull
```




