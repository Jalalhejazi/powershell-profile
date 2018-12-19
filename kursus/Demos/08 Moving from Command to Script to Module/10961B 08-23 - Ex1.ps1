 # Her et eksempel på hvordan man fanger fejl med Try...Catch
 # og ændre den normale PowerShell fejl besked til noget som vi
 # selv kan definerer.
 #
 # Desuden logger vi fejlen til en fil.
 #
 # Vi prøver at kalde en maskine som hedder "OfflineComputer" som ikke findes for at
 # lave et Wmi Service kald. 
 # 
 $name = 'OfflineComputer'
 Try {
    Get-WmiObject -Class Win32_Service -ComputerName $name -ErrorAction Stop -ErrorVariable MyErr

 } Catch {
    
    $msg = "Error connecting to $name"
   
    Write-Host $msg
    $MyErr += $msg

    $MyErr | Out-File .\fejl.log

    ## evt. se Logstash på nettet
}

