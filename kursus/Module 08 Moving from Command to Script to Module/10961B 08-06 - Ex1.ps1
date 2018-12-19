<#
.SYNOPSIS
Retrieves network adapter information from a computer.
.DESCRIPTION
Uses CIM to retrieve information about physical adapters
only. 
.PARAMETER ComputerName
The name of the computer to query.
.EXAMPLE
.\Get-NetAdapterInfo.ps1 -ComputerName LON-DC1 -Verbose
#>

# Man kan lave en "Comment block" (skal komme først i script fil) og ved at
# formatere den som vist her give det mulighed for at man, fra kommando linien
# kan skrive help <Script Navn> få udskrevet hjælp og anvendelses beskrivelser.
#
# Ved at anvende Write-Verbose linier i sit scrip, kan man få ekstra output (debug)
# det gøres ved at kalde med -Verbose parameter.
#
#
#########################################################################
#
#   help about_Functions_Advanced_Parameters
#
#########################################################################



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
           @{name='hastighed';expression={"{0:N2}Mbps" -f ($PSItem.Speed / 1MB)}},
           MACAddress




