# Hvis man kun vil se filer, kan gøres sådan 

Get-ChildItem | Where { -not $PSItem.PSIsContainer }

# Men det er mere effektivt at gøre sådan

Get-ChildItem -File

# Check altid om en kommando selv kan lave filtrering...