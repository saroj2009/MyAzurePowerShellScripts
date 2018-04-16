# Login to Azure using an account with Owner or User access administrator role.
Login-AzureRmAccount -ErrorAction Stop

"Attempting to create a new custom role"

# Create a new custom role which has 
# * Reader role rights as well as 
# * the right to power off virtual machines.

#New-AzureRmRoleDefinition -InputFile 'C:\Users\MyVM\Desktop\Powershellscript\Virtual Machine Oparator.json'
Set-AzureRmRoleDefinition -InputFile 'C:\Users\MyVM\Desktop\Powershellscript\Virtual Machine Oparator Update.json'


#Get-AzureRmRoleDefinition -Name "Hackathon Virtual Machine Operator" | Remove-AzureRmRoleDefinition


"Operation executed successfully."

#Get-AzureRmRoleDefinition -Name "Hackathon Virtual Machine Operator"
