# PowerShell (cross-platform) profile

- Install PowerShell 7 first

```powershell
# test the version of powershell you are using now
$host.version 

# install latest PowerShell 7 (cross-platform)
iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"

```


## Git Clone this repo (Works for PowerShell 7)

- works on Windows 10 and Windows 11 (Windows-terminal)
- works on https://shell.azure.com/powershell
- works on my Mac (i-terminal)
- works on my Ubuntu (PowerShell 7)

```powershell
function profile-setup {
   $repo = "https://github.com/Jalalhejazi/powershell-profile.git"
   try {
       $isCloudShell = uname 
   }catch {}

   if ($isCloudShell -eq "Linux" -or $isCloudShell -eq "Darwin") {
      cd $home
      Remove-Item -Path .config\ -Recurse -Force
      mkdir .config
      cd .config
      git clone $repo powershell
   } else {
      cd "${Env:USERPROFILE}\Documents"
      Remove-Item -Path .\PowerShell\ -Recurse -Force -ErrorAction SilentlyContinue
      git clone $repo powershell
   }
   echo "reload your PowerShell to read $profile"
}

# run powershell function on any PowerShell-7 Terminal | cloudShell | linux | Darwin  
profile-setup
```


### start using profile- and tap for auto-complete
```
profile-info
profile-setup
profile-edit
```


(Optional) Configuration to Azure environment and subscription
- setup environment, then subscription and secret and key management

```powershell
env-set azure-env            'Development | Test | Prod'
env-set azure-subscription   'subscription for dev, test, prod'
env-set azure-keyvault       'azure keyvault to manage secrets and keys' 
```



