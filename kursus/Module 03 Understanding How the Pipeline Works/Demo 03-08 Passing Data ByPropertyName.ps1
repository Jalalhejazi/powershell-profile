# Open this file in the ISE. Highlight one line and press F8 to
# execute just that line. 

# 1
Import-CSV .\Users1.csv
# Notice that the CSV columns become properties, and
# the rows become individual objects

# 2
Help New-ADUser –ShowWindow
# Notice that the parameters correspond to Active Directory
# attributes. Also notice that most parameters accept
# pipeline input ByPropertyName

# 3
Import-CSV .\Users1.csv | New-ADUser –WhatIf
# This command would work, but does not represent a real-world
# scenario. In a real organization, the people providing the
# CSV file might not get the format correct.

# 4
Import-CSV .\Users2.csv
# This is a more real-world input file. The samAccountName
# property is missing. Perhaps a well-meaning person 
# did not understand what it was for, so they removed it.
# We need that to make the command work.

# 5
Import-CSV .\Users2.csv | Select-Object –Property *,@{n='samAccountName';e={$_.Name}} | New-ADUser
# This command will work. We modify the objects in the
# pipeline to correspond with the parameter names we need.

# 6
Get-ADUser –filter *
# Point out that the new user accounts exist.
# They are disabled because they were created without a password.


