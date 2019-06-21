## Clean windows OS

```powershell

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop --version 

scoop install 7zip 
scoop install git 

```

## How to setup profile

```powershell
cd ${Env:USERPROFILE}\Documents

git clone https://superusers-kursus@dev.azure.com/superusers-kursus/windowspowershell/_git/windowspowershell

exit
```

## How to install tools

```powershell
tools-install-development
```

