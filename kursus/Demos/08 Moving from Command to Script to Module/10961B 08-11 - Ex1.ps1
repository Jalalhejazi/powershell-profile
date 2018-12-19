 # Her er et eksempel på en script fil med en "funktion" som hedder "Get-NetAdaptInfo",
 # som man se er parameter blokken og kommentar blokken flyttet ind i funktionen,
 # men bortset fra at der er lagt "function blok" uden om "wrap", så er det faktisk
 # bare det script vi så tideligere som er blevet "wrappet" i en funktion.
 # 
 # Hvis man vil test en funktion, kan man ikke bare køre filen med funktionen,
 # det skyldes at der ikke er noget som kalder funktionen i filen, hvilke gør at 
 # funktionen ikke bliver afviklet.
 #
 # Så lad os kigge hvad vi så gør.....
 #
 function Get-NetAdaptInfo {
    <#
    .SYNOPSIS
    Retrieves network adpater information from a computer.
    .DESCRIPTION
    Uses CIM to retrieve information about physical adapters
    only. 
    .PARAMETER ComputerName
    The name of the computer to query.
    .EXAMPLE
    
      først vil man loade/run/kører scriptet
      . .\Get-NetAdapterInfo.ps1 

      Get-NetAdaptInfo 

    .EXAMPLE
    
      Get-NetAdaptInfo -ComputerName $env:computerName

    .EXAMPLE
    
      Get-NetAdaptInfo -ComputerName "localhost"


    #>
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [string]$ComputerName
    )
    Write-Verbose "Connecting to $ComputerName"
    Get-WmiObject -Class Win32_NetworkAdapter -Filter "PhysicalAdapter=True" -ComputerName $ComputerName |
    Select Name,
           ServiceName,
           AdapterType,
           @{n='Speed';e={"{0:N2}Mbps" -f ($PSItem.Speed / 1MB)}},
           MACAddress
}

