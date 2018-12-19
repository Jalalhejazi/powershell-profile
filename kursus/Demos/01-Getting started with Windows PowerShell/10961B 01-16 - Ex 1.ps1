# Hvordan får vi hjælp til en kommando som vi har fundet og vil bruge

# Først får vi udskrevet hjælpen

Get-Help Get-EventLog

# Eller den total hjælp med det hele hvis man vil

Get-Help Get-EventLog -Full

# Så kalder vi kommandoen med de parametre som vi ønsker at bruge

Get-EventLog -LogName Application

# Man behøver ikke at skrive -Logname, fordi det er en positions bestemt parameter

Get-EventLog Application

# Det er bedst at angive parameter navne, det er mere overskueligt,
# og parametre kan komme i den rækkefølge man ønsker.

Get-EventLog -Newest 10 -LogName Application 

# Her står -Logname ikke først og man benytter derfor ikke at et det er en positionel
# parameter, men man kan så heller ikke unlade parameter navn.
