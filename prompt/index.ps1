
function prompt
{
    $temperatur = get-temperatur-dk 
    $IP = get-private-IP-address
    $time = "{0,2:hh}:{0,2:mm}" -f (Get-Date)

    $host.UI.RawUI.WindowTitle = "$pwd    -    $temperatur    -    time ($time)";
   
    return "$IP $ "
}

