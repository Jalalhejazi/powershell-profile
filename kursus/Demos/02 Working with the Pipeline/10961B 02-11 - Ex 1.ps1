Get-Process |
Select-Object Name,
		ID,
		@{n='VirtualMemory(MB)';e={$_.VM / 1MB}},
		@{n='PageMemory(MB)';e={$_.PM / 1MB}}