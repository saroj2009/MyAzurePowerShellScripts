
Login-AzureRmAccount

# Resource name for your resources  
$resourcegroupname = "testRG"  
$location = "WestEurope"  
# The logical server name: Use a random value or replace with your own (do not capitalize)  
$servername = "skptest"  
# Set login and password for your database  
# The login information for the server  
$adminlogin = "ServerAdmin"  
$password = "ServerAdmin1"  
# The ip address range that you want to allow to access your server   
$startip = "0.0.0.0"  
$endip = "0.0.0.0"  
# The database name  
#$databasename = "mySampleDatabase1" 
$array = @("test1", "test2", "test3")
foreach ($element in $array) {
	
$database = New-AzureRmSqlDatabase  -ResourceGroupName $resourcegroupname `
    -ServerName $servername `
    -DatabaseName $element `
    -RequestedServiceObjectiveName "S0" `
    -SampleName "AdventureWorksLT"
}

