$subscription = (Get-AzSubscription -SubscriptionName Lab).Id
Get-AzTag -ResourceId "/subscriptions/$subscription"