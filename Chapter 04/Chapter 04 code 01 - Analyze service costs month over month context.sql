SELECT 
    MONTH(ChargePeriodStart), 
    ProviderName, 
    ServiceName, 
    SUM(EffectiveCost) AS TotalEffectiveCost 
FROM focus_data_table 
WHERE ChargePeriodStart >= ? AND ChargePeriodStart < ? 
GROUP BY 
    MONTH(ChargePeriodStart), 
    ProviderName, ServiceName 
ORDER BY 
    MONTH(ChargePeriodStart), 
    SUM(EffectiveCost) DESC
