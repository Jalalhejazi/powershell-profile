# Custom-object pipeline function [The Powershell Way]
# Best practice {Keep the power of pipeline}

function Get-Computer()
{

    # PROCESS is actualy a foreach loop Iterator
    # that run once for every entry in the pipe 
    # $_ represents the current pipeline object

    PROCESS{
        # attempt to ping whatever is in $computer variable
        $results = gwmi -Query "SELECT * FROM Win32_PingStatus WHERE Address= '$_'"

        $obj = New-Object psobject
        $obj | Add-Member Noteproperty ComputerName $_
        $obj | Add-Member Noteproperty responsetime ($results.responsetime)
        $obj | Add-Member Noteproperty IPV4Address ($results.IPV4Address)

        # statuscode = 0 is good news; anything else is bad
        if ($results.statuscode -eq 0){
                $obj| Add-Member NoteProperty online $true
        }else {
            $obj| Add-Member NoteProperty online $false
        }     
            Write-Output $obj
    }
 }




 