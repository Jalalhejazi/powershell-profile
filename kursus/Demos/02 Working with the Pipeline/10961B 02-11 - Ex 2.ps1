Get-Process |
Select-Object Name,
		ID,
		@{n='VirtualMemory(MB)';e={'{0:N0}' -f ($PSItem.VM / 1MB) }},
		@{n='PageMemory(MB)';e={'{0:N0}' -f ($PSItem.PM / 1MB) }}