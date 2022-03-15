

# Press the `.` key

![github dev](https://user-images.githubusercontent.com/856858/130119109-4769f2d7-9027-4bc4-a38c-10f297499e8f.gif)





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
       $myComputer = uname 
   }catch {}

   if ($myComputer -eq "Linux" -or $myComputer -eq "Darwin") {
      cd $home
      Remove-Item -Path .config\ -Recurse -Force -ErrorAction SilentlyContinue
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
env-set azure-env            'Development'
env-set azure-subscription   'MSDN_950_kr'
env-set azure-keyvault       '<your azure keyvault account>' 
```
