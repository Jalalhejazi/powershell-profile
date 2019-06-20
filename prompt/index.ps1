
function prompt
{
    $temperatur = get-temperatur-dk 
    $IP = get-private-IP-address
   
    $host.UI.RawUI.WindowTitle = "$pwd    -    $temperatur";
   
    return "$IP $ "
}

