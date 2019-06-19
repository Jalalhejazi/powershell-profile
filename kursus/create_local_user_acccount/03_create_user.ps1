[cmdletBinding()]
param(
    $Username = "kursusUser" ,
    $Password = "Pa$$w0rd"   ,
    $group = "Administrators"
)

$adsi = [ADSI]"WinNT://$env:COMPUTERNAME"
$existing = $adsi.Children | where {$_.SchemaClassName -eq 'user' -and $_.Name -eq $Username }

if ($existing -eq $null) {

    Write-verbose "Creating new local user $Username."
    & NET USER $Username $Password /add /y /expires:never
    
    Write-verbose "Adding local user $Username to $group."
    & NET LOCALGROUP $group $Username /add

}
else {
    Write-verbose "Setting password for existing local user $Username."
    $existing.SetPassword($Password)
}

Write-verbose "Ensuring password for $Username never expires."
& WMIC USERACCOUNT WHERE "Name='$Username'" SET PasswordExpires=FALSE