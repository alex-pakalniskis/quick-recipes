SELECT 
  indexer,
  FORMAT_DATE('%b-%Y', DATE(transaction_created_at)) AS mon_year,
  SUM(allocated_tokens) AS `sum_allocated_tokens`,
  COUNT(DISTINCT(subgraph_deployment)) AS `subgraph_deployment_count`,
  SUM(indexing_rewards) AS `sum_indexing_rewards`,
  SUM(query_fees_collected) AS `sum_query_fees_collected`,
  SUM(query_fee_rebates) AS `sum_query_fees_rebated`,
  SAFE_DIVIDE(SUM(query_fee_rebates), SUM(query_fees_collected)) * 100 AS `percent_query_fees_rebated`
FROM 
  `graph-mainnet.internal_metrics.metrics_indexer_allocations` 
WHERE 
  (`transaction_created_at` >= CAST('2022-08-01T00:00:00.000000' AS TIMESTAMP) AND `transaction_created_at` < CAST('2023-08-01T00:00:00.000000' AS TIMESTAMP))
GROUP BY 
  mon_year, 
  indexer
ORDER BY 
  PARSE_DATE('%b-%Y', mon_year) 
