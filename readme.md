## PowerShell version 7 (cross-platform) Configuration


- Must install PowerShell 7 first

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
scoop install googlechrome vscode
```


Setup environment, Azure Subscription, Keyvault, docker, git, etc. 

```powershell
function profile-setup {
   $repo = "https://superusers-kursus@dev.azure.com/superusers-kursus/PowerShell/_git/PowerShell"

   try {
       $isCloudShell = uname 
   }catch {}

   if ($isCloudShell -eq "linux") {
      cd $home
      Remove-Item -Path .config\ -Recurse -Force
      mkdir .config
      cd .config
      git clone $repo
   } else {
      cd "${Env:USERPROFILE}\Documents"
      Remove-Item -Path .\PowerShell\ -Recurse -Force
      git clone $repo
   }
   echo "reload your PowerShell to read $profile"
}



# run the function profile-setup to download and configure PowerShell profile for windows and Azure-CloudShell
profile-setup


# setup environment, then subscription and secret and key management
env-set azure-env            'Deveolpment | Test | Prod'
env-set azure-subscription   'subscription for dev, test, prod'
env-set azure-keyvault       'azure keyvault to manage secrets and keys' 


# start using profile- and tap for auto-complete
profile-info
profile-setup
profile-edit
```
