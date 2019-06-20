## About psDrive

```
get-command -noun psDrive

help  Get-PSDrive  -examples

Get-PSDrive | select Provider

Get-PSDrive -PSProvider FileSystem

```

## How to use New-PSDrive  

```
help New-PSDrive  -examples

New-PSDrive -Name profile -PSProvider FileSystem -Root $profileHome -Description "my Profile folder"
```