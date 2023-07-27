$ServiceName = "RtlWlanu"

$Adapter = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -Filter "ServiceName='$ServiceName'"

    $Result = $Adapter.SetDNSServerSearchOrder(@())

    if ($Result.ReturnValue -eq 0) 
    {
        Write-Output "DONE !"
    }

    else 
    {
        Write-Output "FAILED !"
    }

