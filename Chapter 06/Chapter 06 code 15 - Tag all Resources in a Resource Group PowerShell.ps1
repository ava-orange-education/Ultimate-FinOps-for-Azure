$resourceGroup = "myResourceGroup"
$tagKey = "Project"
$tagValue = "Alpha"

$resources = Get-AzResource -ResourceGroupName $resourceGroup
foreach ($resource in $resources) {
    $resource | Set-AzResource -Tag @{ $tagKey = $tagValue } -Force
}
