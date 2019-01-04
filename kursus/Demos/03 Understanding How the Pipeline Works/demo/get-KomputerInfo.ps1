Clear-Host

# finde en liste af computerNavne
# Hent information om disse computers
# sendes videre til andre PS functions
  
# get-content ./pc.txt     |
# Get-KomputerInfo  

### Liste af ComputerNames

"Offline", "localhost" , "127.0.0.1" , $env:COMPUTERNAME | Out-File ./pc.txt

$data = Get-Content .\pc.txt 


function Get-KomputerInfo() 
{
    # For Each Input from PIPELINE
    process{
        # Write-Output  "PC = $_"

        ## How to get more info about Computer data
        $results1 = gwmi -Query "SELECT * FROM win32_PingStatus Where Address ='$_' " 
        
        ##$results2 = gwmi -Query "SELECT * FROM class-software Where Address ='$_' "

        $obj = New-Object psObject

        $obj | Add-Member NoteProperty Navn $results1.PSComputerName
        $obj | Add-Member NoteProperty IPv4 $results1.IPV4Address
        $obj | Add-Member NoteProperty IPv6 $results1.IPV6Address
        

          # statuscode = 0 is good news; anything else is bad
        if ($results1.statuscode -eq 0){
                $obj| Add-Member NoteProperty Responding $true
        }else {
            $obj| Add-Member NoteProperty Responding $false
        }     
            Write-Output $obj
    }
}


$data | 
Get-KomputerInfo  | 
select *

