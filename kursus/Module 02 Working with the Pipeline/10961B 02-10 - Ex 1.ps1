Get-Process | 
Select-Object Name,ID,
@{
        n='VirtualMemory';
        e={$_.VM}
},

@{      
        n='PageMemory';
        e={$_.PM}
}
