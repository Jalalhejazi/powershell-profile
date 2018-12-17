# Open this file in the ISE. Highlight one line and press F8 to
# execute just that line. 

# 1
Get-ItemProperty –Path HKCU:\Network\* | ForEach-Object –Process { Set-ItemProperty –Path $PSItem.PSPath –Name RemotePath –Value $PSItem.RemotePath.ToUpper() }
Get-ItemProperty -Path HKCU:\*
# 2
Get-Process | ForEach-Object –Begin { Get-Date | Out-File Procs.txt } –Process { $PSItem.Name | Out-File Procs.txt –Append }



