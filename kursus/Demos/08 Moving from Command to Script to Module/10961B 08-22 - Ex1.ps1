 # Her et eksempel på hvordan man fanger fejl med Try...Catch
 # og ændre den normale PowerShell fejl besked til noget som vi
 # selv kan definerer.
 #
 # Vi prøver at kalde en maskine som hedder "OfflineComputer" som ikke findes for at
 # lave et Wmi Service kald. 
 # 
 
[CmdletBinding()] 

param(
    $ComputerName ="OfflineComputer"
)
 Try {
    
    Get-WmiObject -Class Win32_Service -ComputerName $ComputerName -ErrorAction Stop
    $pc = "todo ....."

 }  Catch {
    Clear-Host
    Write-Host "Error connecting to $ComputerName"  -ForegroundColor red
}
