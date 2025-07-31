$replaceTags = @{"Department"="Marketing";"Project"="Beta" }
$resource = Get-AzResource -Name focusprojecttest -ResourceGroup focus-project
Update-AzTag -ResourceId $resource.id -Tag $removeTags -Operation Replace