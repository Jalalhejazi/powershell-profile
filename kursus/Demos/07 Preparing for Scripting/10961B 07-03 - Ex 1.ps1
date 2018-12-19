# Put værdien "daily" i variablen "var"

$var = 'daily'

# hvad er der i variablen "var" nu ?

Get-Variable -Name  var
Get-Variable -Name 'var'
Get-Variable -Name "var"

# det er meget nemmere at skriv $var ikke :-) 
$var


# det må man ikke !!! 
# Cannot find a variable with the name 'daily'

Get-Variable -Name $var



# Her laver vi en fejl og tror at vi nu putter 700 ind i variablen "var" men det gør vi ikke...

Set-Variable -Name $var -Value 700

$var

# Hvis dette skulle virke skulle vi have skrevet sådan

Set-Variable -Name var -Value 700

$var

