

function kursus-mounting {
    param(
        $path = "C:\dev\practical-powershell\02-Udvidet-PowerShell"
    )
    $config = @{
        Name = "kursus"
        PSProvider = "FileSystem"
        Root = $path
        Description = "Maps to my working folder."
    }
    New-PSDrive @config -Scope Global
}

