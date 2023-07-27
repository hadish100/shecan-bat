$DNSServers = "178.22.122.100","185.51.200.2"

$ServiceName = "RtlWlanu"

$Adapter = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -Filter "ServiceName='$ServiceName'"

    $Result = $Adapter.SetDNSServerSearchOrder($DNSServers)

    if ($Result.ReturnValue -eq 0) 
    {
        Write-Output "DONE !"
    }

    else 
    {
        Write-Output "FAILED !"
    }

