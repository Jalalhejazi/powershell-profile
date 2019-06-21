# 1
Get-SMBShare | Where Name –like '*$*'

# 2
Get-PhysicalDisk | Where-Object –FilterScript { $PSItem.HealthStatus –eq 'Healthy' } | Select-Object -Property FriendlyName,OperationalStatus

# 3
Get-PhysicalDisk | Where-Object –FilterScript { $PSItem.HealthStatus –eq 'Healthy' } | Select-Object -Property FriendlyName,OperationalStatus,DriveLetter,FileSystemLabel,DriveType,FileSystem | fl

# 4
Get-Verb | Where { $_.Verb –like 'c*' } | fw



