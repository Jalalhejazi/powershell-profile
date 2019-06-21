help ConvertFrom-Json -Examples


$data =  (Get-Content .\products.json) -join "`n" | ConvertFrom-Json

$data.products[0]
$data.products[1]




