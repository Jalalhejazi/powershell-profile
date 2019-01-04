# Passing Data ByValue
# Her bruges den skjulte parameter som overføre Object: ServiceController som er kompatibelt med den næste
# kommando i piplinen

Get-Service | Get-Member

#   TypeName: System.ServiceProcess.ServiceController

Show-Command Stop-Service

#    -InputObject <ServiceController[]>
#       Specifies ServiceController objects representing the services to be stopped.
#       Enter a variable that contains the objects, or type a command or expression that gets the objects.
#
#       Required?                    true
#       Position?                    1
#       Default value                
#       Accept pipeline input?       true (ByValue)
#       Accept wildcard characters?  false

Get-Service -Name BITS | Stop-Service

