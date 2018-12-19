## TODO

```
1. Læs indholdet af filen products.json 
	
	Get-Content .\products.json


2. Filen er json format, derfor undersøg 'ConvertFrom-JSON'
   
    help ConvertFrom-Json -Examples

   	$products =  (Get-Content .\products.json) -join "`n" | ConvertFrom-Json
   	$rowNr = 0
    $products.products[$rowNr].productID
   	$products.products[$rowNr].productName

    ## Her kan ForEach på en Array også bruges !!
    $products.products.ForEach()


3. Beregn hvor mange rækker er der i filen?

   	$products er en array
  	$products.count 


```