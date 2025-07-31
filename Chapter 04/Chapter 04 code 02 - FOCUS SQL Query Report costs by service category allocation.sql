SELECT 
    ProviderName, 
    BillingCurrency, 
    BillingPeriodStart, 
    ServiceCategory, 
    SUM(BilledCost) AS TotalBilledCost 
FROM focus_data_table 
WHERE BillingPeriodStart >= ? AND BillingPeriodEnd <= ? 
GROUP BY 
    ProviderName, 
    BillingCurrency, 
    BillingPeriodStart, 
    ServiceCategory 
ORDER BY 
    TotalBilledCost DESC
