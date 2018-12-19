# Eksempel på en typisk fejl, hvor man har glemt at et objekt typisk er en kompleks struktur
# med mange informationer, ikke kun dem man ønsker at bruge.

# I dette eksempel kan der være flere ting som ikke er som man måske forventer, f.eks indeholder
# variablen "$file" ikke kun et objekt, men flere, et for hver fil i den aktuelle folder hvis der 
# er mere end en fil.
# For det andet indeholder $file ikke kun et path til en fil, men også meget andet infomation
# men også dato og tid mv.

$file = Get-ChildItem -Path .\ -File
Get-Content -Path $file

# lad os kigge på indholdet af "$file"

$file

# dette vil virke, fordi man angive at det er "FullName" property som man ønsker, ikke hele "$file"
# alle informationer.

$file = Get-ChildItem -Path .\ -File 
Get-Content -Path $file.FullName

# lad os kigge på indholdet af "$file.FullName"

$file.FullName