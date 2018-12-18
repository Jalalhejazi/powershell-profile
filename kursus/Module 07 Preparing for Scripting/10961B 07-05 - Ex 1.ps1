# Hent dato og tids info. og gem det i variablen $today.

$today = Get-Date

# Hvad har vi nu i $today (med std. format visning) 

$today 
$today | select *

# Hvis man f.eks kun vil have ugedagen (som ikke bliver vist i std. visning)

$today.DayofWeek

# Eller tidspunk på dagen med det hele

$today.TimeOfDay

# Eller klokkeslet "Timer"

$today.TimeOfDay.Hours

# Eller klokkeslet "Minutter"

$today.TimeOfDay.Minutes

# Hvis jeg gerne vil se dato og tid 90 dage frem

$today.AddDays(90)
