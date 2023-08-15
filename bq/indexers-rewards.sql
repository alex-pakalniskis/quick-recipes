SELECT 
  FORMAT_DATE('%b-%Y', DATE(transaction_created_at)) AS mon_year, 
  COUNT(*) AS `transaction_count`,
  COUNT(DISTINCT(indexer)) AS `indexer_count`,
  SUM(query_fees_collected) AS `sum_query_fees_collected`,
  SUM(query_fee_rebates) AS `sum_query_fees_rebated`,
  SUM(query_fee_rebates) / SUM(query_fees_collected) * 100 AS `percent_query_fees_rebated`,
  SUM(indexing_rewards) AS `sum_indexing_rewards`,
  SUM(query_fees_collected) / (SUM(query_fees_collected) + SUM(indexing_rewards)) * 100 AS `idealized_percent_of_rewards_from_query_fees`,
FROM `graph-mainnet.internal_metrics.metrics_indexer_allocations` 
WHERE (`transaction_created_at` >= CAST('2022-05-01T00:00:00.000000' AS TIMESTAMP)) AND (`transaction_created_at` < CAST('2023-08-01T00:00:00.000000' AS TIMESTAMP))
GROUP BY mon_year
ORDER BY PARSE_DATE('%b-%Y', mon_year)  
