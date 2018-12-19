# Nogle gange vil man have et output fra en kommando sorteret anderledes 
# til det kan man anveden Sort-Object

Get-Service | Sort-Object -Property Name -Descending

Get-Service | Sort Name -Desc

Get-Service | Sort Status,Name

Get-Service | Sort Status,Name | select * 

Get-Service | Sort Status,Name | select Name, Status 

Get-Service |  select Name, Status  | Sort Status,Name  | format-table -autoSize