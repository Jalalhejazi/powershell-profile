
function goto-eventGrid {
    chrome https://superusers-kursus-demo-event-grid-2020.azurewebsites.net/
}

function send-data-to-azure {
    param(
    $message = "besked",
    $subject = "titel",
    $x = "xxx",
    $y = "yyy",
    $z = "zzz" 
    )

    # env-set -Name event-grid-key $(get-azure-secret event-grid-key)
    # env-set -Name event-grid-url $(get-azure-secret event-grid-url)
    $WebHookAddress =  "https://superusers-kursus-2020.westeurope-1.eventgrid.azure.net/api/events"
    $key            =  env-get event-grid-key

    # Build The Message to be sent to Event Grid
    $eventID = Get-Random 99999
    $eventDate = Get-Date -Format s
    $htbody = @{
        id=$eventID
        eventType=$message
        subject=$subject    
        eventTime=$eventDate   
        data= @{
            x=$x
            y=$y
            z=$z
        }
        dataVersion="1.0"
    }

    # Convert from object to JSON
    $body = "["+(ConvertTo-Json $htbody)+"]"

    Invoke-WebRequest -Uri $WebHookAddress -Method POST -Body $body -Headers @{"aeg-sas-key" = $key}
}