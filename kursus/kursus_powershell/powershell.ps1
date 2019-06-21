
function powershell-update-help {
    Update-Help -Force -ErrorAction SilentlyContinue
} 


New-PSDrive -Name profile -PSProvider FileSystem -Root $profileHome | Out-Null
New-PSDrive -Name kursus -PSProvider FileSystem -Root "$profileHome/kursus"  | Out-Null
New-PSDrive -Name opgaver -PSProvider FileSystem -Root "$profileHome/kursus/opgaver" | Out-Null
