# Login-AzureRmAccount


for($i = 111; $i -lt 112; $i++)
{
        $prefix = ''
        if($i -lt 10)
        {
        $prefix='00'
        }
        if($i -gt 10 -and $i -lt 100)
        {
        $prefix='0'
        }
        New-AzureRmResourceGroup -Name hackathonteamrg$prefix$i -Location "South Central US"
   # Get-AzureRmResourceGroup -Name hackathonteamrg$i | Remove-AzureRmResourceGroup -Verbose -Force
}

