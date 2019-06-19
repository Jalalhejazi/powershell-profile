
## How to create LocalUser-Account 

```
Løsningen skal ikke være afhængig af hvilke version af powershell 

Forbedre løsning step by step, derfor de forskellige filer (jo højere version jo bedre) 

               ...
            05_create_user.ps1
         04_create_user.ps1
      03_create_user.ps1
   02_create_user.ps1
01_create_user.ps1

```



## Gælder kun for PowerShell version 5

ref.: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1

```
Get-Command -Noun LocalUser

   Disable-LocalUser
   Enable-LocalUser
   Get-LocalUser
   New-LocalUser
   Remove-LocalUser
   Rename-LocalUser
   Set-LocalUser


New-LocalUser
   [-Name] <String>
   [-AccountExpires <DateTime>]
   [-AccountNeverExpires]
   [-Confirm]
   [-Description <String>]
   [-Disabled]
   [-FullName <String>]
   [-NoPassword] | [-Password <SecureString>]
   [-UserMayNotChangePassword]
   [-WhatIf]
   [<CommonParameters>]

```