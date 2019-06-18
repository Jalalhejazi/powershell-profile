# cat = get-content

$x = Get-Content './data.json' | ConvertFrom-Json 
( $x ).adresse 
