$x = Get-EventLog -List

# help where -examples

$x | where Log -eq 'Windows PowerShell' 


# help Get-PhysicalDisk -Examples

$x = Get-PhysicalDisk
$x | 
Where-Object -FilterScript { $PSItem.healthStatus -eq 'Healthy' } |
Select-Object -Property FriendlyName,OperationalStatus,DriveLetter,FileSystemLabel,DriveType,FileSystem 





