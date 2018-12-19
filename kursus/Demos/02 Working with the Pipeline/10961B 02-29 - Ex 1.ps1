# Andet eksempel på kommando som selv kan lave filtrering

#Kan gøres sådan

Get-Service | Where Name -like Spo*

# Men det er mere effektivt at gøre sådan

Get-Service -Name Spo*

# Igen !!! Check altid om en kommando selv kan lave filtrering...