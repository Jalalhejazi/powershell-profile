### Ref.: http://book_ps.itacademy.dk/moduler/05_pipeline/


function Get-Computer()
{

    # PROCESS is actualy a foreach loop Iterator
    # that run once for every entry in the pipe 
    # $_ represents the current pipeline object

    PROCESS{
        # attempt to ping whatever is in $computer variable
        $results = gwmi -Query "SELECT * FROM Win32_PingStatus WHERE Address= '$_'"

        $obj = New-Object psobject
        $obj | Add-Member Noteproperty Computer $_
        $obj | Add-Member Noteproperty ResponseTime ($results.responsetime)
        $obj | Add-Member Noteproperty IPAddress ($results.protocoladdress)

        # statuscode = 0 is good news; anything else is bad
        if ($results.statuscode -eq 0){
                $obj| Add-Member NoteProperty Responding $true
        }else {
            $obj| Add-Member NoteProperty Responding $false
        }     
            Write-Output $obj
    }
 }