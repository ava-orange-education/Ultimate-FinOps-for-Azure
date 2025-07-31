$resourceGroup = Get-AzResourceGroup -Name focus-project
Get-AzTag -ResourceId $resourceGroup.ResourceId
