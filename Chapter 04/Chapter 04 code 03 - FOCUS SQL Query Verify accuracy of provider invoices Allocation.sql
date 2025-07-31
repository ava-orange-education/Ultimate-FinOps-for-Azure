SELECT 
    ProviderName, 
    BillingAccountId, 
    BillingAccountName, 
    BillingCurrency, 
SUM(BilledCost) AS TotalBilledCost 
FROM focus_data_table 
WHERE BillingPeriodStart >= ? AND BillingPeriodEnd < ? 
GROUP BY 
    ProviderName, 
    BillingAccountId, 
    BillingAccountName, 
    BillingCurrency
