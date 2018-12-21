
<#
    .EXAMPLES
    Set-AccessControl-demo-only | SELECT * 

    .EXAMPLES
    $x = Set-AccessControl-demo-only 
    $x | select * 

#>

function Set-AccessControl-demo-only {
    param(
        $folder     = "$ProfileHome\Test02",
        $myGroup    = "NETWORK SERVICE" 
    )

    Remove-Item $folder -Recurse -Force 
    New-Item $folder -ItemType Directory -Force
     
    $acl = Get-Acl $folder

    ## msdn doc FileSystemAccessRule
    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("$myGroup", "ReadData", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($rule)

    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("$myGroup", "CreateFiles", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($rule)

    $rule = New-Object System.Security.AccessControl.FileSystemAccessRule("$myGroup", "AppendData", "ContainerInherit, ObjectInherit", "None", "Allow")
    $acl.AddAccessRule($rule)
  
    #################################
    Set-Acl $folder $acl
    #################################

    $permission = Get-Acl $folder
    
    write-output $permission 

}