#Login-azureRMAccount

$role = Get-AzureRmRoleDefinition "Virtual Machine contribution"
$role.Id=$null
$role.Name = "Virtual Machine Oparator"
$role.Description = "Can monitore and restart Virtual Machine"
$role.Actions.Clear()
$role.Actions.Add("Microsoft.Storage/*/read")
$role.Actions.Add("Microsoft.Network/*/read")
$role.Actions.Add("Microsoft.Compute/*/read")
$role.Actions.Add("Microsoft.Compute/VirtualMachines/start/action")
$role.Actions.Add("Microsoft.Compute/VirtualMachines/restart/action")
$role.Actions.Add("Microsoft.Authorization/*/read")
$role.Actions.Add("Microsoft.Resources/subscriptions/resourceGroups/read")
$role.Actions.Add("Microsoft.Insights/alertRules/*")
$role.Actions.Add("Microsoft.Support/*")
$role.Actions.AssignableScopes.Clear()
$role.Actions.AssignableScopes.Add("/subscriptions/dd68a4fb-e8cf-4577-a15b-217f4c493451")
New-AzureRmRoleDefinition -Role $role