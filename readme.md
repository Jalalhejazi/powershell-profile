## $PROFILE for WindowsPowerShell

Before powershell.exe runs, the file named $profile must exist to configure your environments

The OpenSource community is using scoop as CLI with PowerShell to automate the installation process like linux

- [See a video on youtube Why Using Scoop on Windows ?](https://www.youtube.com/watch?v=Pj1PaZMzMz0)

```
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop --version 

scoop update
scoop install 7zip 
scoop install git 
scoop install vscode
```

## profile-setup

```powershell
cd ${Env:USERPROFILE}\Documents

git clone https://superusers-kursus@dev.azure.com/superusers-kursus/windowspowershell/_git/windowspowershell

# must restart to read $profile configuration
exit

# start powershell.exe 
profile-info

```
