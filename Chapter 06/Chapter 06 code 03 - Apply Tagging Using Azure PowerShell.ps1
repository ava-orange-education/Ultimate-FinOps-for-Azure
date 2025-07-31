$tags = @{"Department"="Finance"; "Project"="Alpha"}
$resource = Get-AzResource -Name focusprojecttest -ResourceGroup focus-project
New-AzTag -ResourceId $resource.id -Tag $tags
