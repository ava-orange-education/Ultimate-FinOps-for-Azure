$resource = Get-AzResource -Name focusprojecttest -ResourceGroup focus-project
Get-AzTag -ResourceId $resource.id
