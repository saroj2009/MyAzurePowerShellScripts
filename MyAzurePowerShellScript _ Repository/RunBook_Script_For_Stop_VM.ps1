<#******************************************************************************************************************************************
Created By    : Priti Bhunia
Created Date  : 29-March-2018
Tested By     : 
Tested Date   : 
Description   :  Authentication using AutomationConnection & Script will stop the VM

Modified By   :
Modified Date :
Description

******************************************************************************************************************************************#>
# Authentication using AutomationConnection

$Conn = Get-AutomationConnection -Name AzureRunAsConnection
Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID -ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint

#Get Resource Group Details
$rg = Get-AzureRmResourceGroup
$rgName = $rg.ResourceGroupName

foreach($rgN in $rgName)
{
    $vms = Get-AzureRmVM -ResourceGroupName $rgN
    $vmN = $vms.Name
    $vmId = $vms.Id
    if($vmN.count -gt 0){
        foreach($vm in $vmN){
            Stop-AzureRmVM -Name $vm -ResourceGroupName $rgN -Force
            Write-Host $vm "is stopped"
        }
    }
}