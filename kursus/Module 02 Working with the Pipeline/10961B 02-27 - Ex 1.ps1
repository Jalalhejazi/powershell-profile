Get-EventLog -LogName Security -Newest 100 |
Where { $PSItem.EventID -eq 4672 -and $PSItem.EntryType -eq 'SuccessAudit'}
