## TODO

```
1. Læs indholdet af filen products.json 
	
	Get-Content .\products.json


2. Filen er json format, derfor undersøg 'ConvertFrom-JSON'
   
    help ConvertFrom-Json -Examples

    $data     = Get-Content .\products.json
   	$products = data  | ConvertFrom-Json
   	
    $rowNr    = 0
    $products.products[$rowNr].productID
   	$products.products[$rowNr].productName

    ## Her kan ForEach på en Array også bruges !!
    $products.products.ForEach( {"$_"} )

    $names = $products.products.ForEach( {"$($_.productName)"} )
    $names = $products.products.ForEach{"$($_.productName)"} 
   

3. Beregn hvor mange rækker er der i filen?

   	$products er en array
  	$products.count 


```