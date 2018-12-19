# Hent en sorteret liste af services og gem den i variablen $service (et array).

$services = Get-Service | where Status -eq 'Running' | Sort Name -Descending

# Første element i array

$services[0]

# Anden element i array

$services[1]

# Sisdste element i array

$services[-1]

# Kun navnet af det 3 element i array

$services[2].Name

# Kun status fra det 2 sidste element i array

$services[-2].Status