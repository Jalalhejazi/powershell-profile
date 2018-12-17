# Hvordan opdatere vi hjælpe system med den nyeste informantion

# Denne kommando går online hos Microsoft og henter opdateringe til hjælpe systemet
# kræver at der internet forbindelse, og i nogle tilfælde at man har administrator rettighedder
# for kunne installerer opdateringer til alle mouduler.

Update-Help -ErrorAction SilentlyContinue  -WarningAction SilentlyContinue  -Force

# Hvis man ønsker at hente og gemme opdaterede hjælp filer, så de evt. kan overføres 
# til maskiner som ikke har internet adgang.

Save-Help