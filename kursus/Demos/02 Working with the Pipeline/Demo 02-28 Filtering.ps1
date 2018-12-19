# Open this file in the ISE. Highlight one line and press F8 to
# execute just that line. 

# 1
Get-SMBShare | Where Name –like '*$*'

# 2
Get-PhysicalDisk | Where-Object –FilterScript { $PSItem.HealthStatus –eq 'Healthy' }

# 3
Get-Volume | Where { $PSItem.DriveType –eq 'Fixed' –and $PSItem.FileSystem –eq 'NTFS' }

# 4
Get-Verb | Where { $_.Verb –like 'c*' }

