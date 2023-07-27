$Adapters = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = TRUE"

Write-Output "Available network adapters:"
foreach ($Adapter in $Adapters) 
{
    Write-Output "$($Adapter.ServiceName)"
}