
$WhatIfPreference

Stop-Service BITS -WhatIf

$WhatIfPreference = 1
 
Stop-Service BITS

$WhatIfPreference = 0

$ConfirmPreference 

Clear-EventLog System -Confirm

$ConfirmPreference = "Low"

Clear-EventLog System

Help about_Preference_Variables