## TODO

```
1. Læs indholdet af filen products.json 
	
	Get-Content .\products.json


2. Filen er json format, derfor undersøg 'ConvertFrom-JSON'
   
   help ConvertFrom-Json -Examples

   	$products =  (Get-Content .\products.json) -join "`n" | ConvertFrom-Json
   	$products.products[0]
   	$products.products[1]


3. Beregn hvor mange rækker er der i filen?

   	$products er en array
  	$products.count 


```