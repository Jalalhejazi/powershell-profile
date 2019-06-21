function kursus-windows-bruger {
<#
    .SYNOPSIS
    Creates a local user account.

    .DESCRIPTION
    The kursus-windows-bruger cmdlet creates a local user account. 
    Ensuring password for new user never expires.
    Setting password for existing local user

    .Functionality

    TODO:

    1) Prompt for Username and Password using cmdLet read-host
    2) Repeat password for confirmation 
    3) $password = read-host -prompt "type your password" -asSecurestring
    4) Use the pipeline, write-output .... 


    the syntax of this command is using NET USER external command

    NET HELP USERS

    NET USER creates and modifies user accounts on computers. When used
    without switches, it lists the user accounts for the computer. The
    user account information is stored in the user accounts database.

    username     Is the name of the user account to add, delete, modify, or
                 view. The name of the user account can have as many as
                 20 characters.
    password     Assigns or changes a password for the user's account.
                 A password must satisfy the minimum length set with the
                 /MINPWLEN option of the NET ACCOUNTS command. It can have as
                 many as 14 characters.
    *            Produces a prompt for the password. The password is not
                 displayed when you type it at a password prompt.
    /DOMAIN      Performs the operation on a domain controller of
                 the current domain.
    /ADD         Adds a user account to the user accounts database.
    /DELETE      Removes a user account from the user accounts database.

    Options      Are as follows:

       Options                    Description
          --------------------------------------------------------------------
       /ACTIVE:{YES | NO}         Activates or deactivates the account. If
                                  the account is not active, the user cannot
                                  access the server. The default is YES.
       /COMMENT:"text"            Provides a descriptive comment about the
                                  user's account.  Enclose the text in
                                  quotation marks.
       /COUNTRYCODE:nnn           Uses the operating system country/region code
                                  to implement the specified language files for
                                  a user's help and error messages. A value of
                                  0 signifies the default country/region code.
       /EXPIRES:{date | NEVER}    Causes the account to expire if date is
                                  set. NEVER sets no time limit on the
                                  account. An expiration date is in the
                                  form mm/dd/yy(yy). Months can be a number,
                                  spelled out, or abbreviated with three
                                  letters. Year can be two or four numbers.
                                  Use slashes(/) (no spaces) to separate
                                  parts of the date.
       /FULLNAME:"name"           Is a user's full name (rather than a
                                  username). Enclose the name in quotation
                                  marks.
       /HOMEDIR:pathname          Sets the path for the user's home directory.
                                  The path must exist.
       /PASSWORDCHG:{YES | NO}    Specifies whether users can change their
                                  own password. The default is YES.
       /PASSWORDREQ:{YES | NO}    Specifies whether a user account must have
                                  a password. The default is YES.
       /LOGONPASSWORDCHG:{YES|NO} Specifies whether user should change their
                                  own password at the next logon.The default is NO.
       /PROFILEPATH[:path]        Sets a path for the user's logon profile.
       /SCRIPTPATH:pathname       Is the location of the user's logon
                                  script.
       /TIMES:{times | ALL}       Is the logon hours. TIMES is expressed as
                                  day[-day][,day[-day]],time[-time][,time
                                  [-time]], limited to 1-hour increments.
                                  Days can be spelled out or abbreviated.
                                  Hours can be 12- or 24-hour notation. For
                                  12-hour notation, use am, pm, a.m., or
                                  p.m. ALL means a user can always log on,
                                  and a blank value means a user can never
                                  log on. Separate day and time entries with
                                  a comma, and separate multiple day and time
                                  entries with a semicolon.
       /USERCOMMENT:"text"        Lets an administrator add or change the User
                                  Comment for the account.
       /WORKSTATIONS:{computername[,...] | *}
                                  Lists as many as eight computers from
                                  which a user can log on to the network. If
                                  /WORKSTATIONS has no list or if the list is *,
                                  the user can log on from any computer.

        
    .PARAMETER Username
    The new Username

    .PARAMETER Password
    password 
    
    .PARAMETER Group
    localGroup member
    
    .EXAMPLE
       kursus-windows-bruger -Username "kursist01" -Password "Pa$$w0rd" -Group "Administrators"
    
    .EXAMPLE
       kursus-windows-bruger -Username "kursist02" -Password "Pa$$w0rd" -Group "Power Users"
    

#>

[CmdletBinding()]
param(
    
    [Parameter(Mandatory = $true)] [string] $Username ,
    [Parameter(Mandatory = $true)] [string] $Password ,
    [Parameter(Mandatory = $true)] [string] $Group  
)


    Set-StrictMode -Version Latest
    $ErrorActionPreference  = 'SilentlyContinue'


    $adsi = [ADSI]"WinNT://$env:COMPUTERNAME"
    $existing = $adsi.Children | where {$_.SchemaClassName -eq 'user' -and $_.Name -eq $Username }

    if ($existing -eq $null) {

        Write-Output "Creating new local user $Username."
        & NET USER $Username $Password /add /y /expires:never /COMMENT:"$Username is member of $Group "
        
        Write-Output "Adding local user $Username to $Group."
        & NET LOCALGROUP $Group $Username /add

    }
    else {
        Write-Output "Setting password for existing local user $Username."
        $existing.SetPassword($Password)
    }

    Write-Output "Ensuring password for $Username never expires."
    & WMIC USERACCOUNT WHERE "Name='$Username'" SET PasswordExpires=FALSE


}

















#########################################################################
#
#   help about_Functions_Advanced_Parameters
#
#########################################################################