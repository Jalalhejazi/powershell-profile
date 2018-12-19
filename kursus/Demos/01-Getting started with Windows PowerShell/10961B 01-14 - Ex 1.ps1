# For at få hjælp hvis man har en ide om hvad man søger

# F.eks noget med "service"

Get-Help *service*

# Eller "event"

Get-Help *event*

# Eller "Directory"

Get-Help *Directory*

# Hvis man gerne vil se kommandoer som er installeret på systemet
# som har noget med "event" at gøre

Get-Command *event*

# Se kommandoer hvor "Noun" (det efter -) hedder noget med *event*

Get-Command -Noun *event*

# Se kommandoer hvor "Verb" hedder noget med Get

Get-Command -Verb Get

# Hvis man vil se en list af kommandoer fra et specifikt modul

Get-Command -Module NetAdapter

# Hvis man vil se tilgængelige moduler

Get-Module -ListAvailable

