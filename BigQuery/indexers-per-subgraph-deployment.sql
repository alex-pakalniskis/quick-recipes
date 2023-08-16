SELECT 
  subgraph_deployment,
  FORMAT_DATE('%b-%Y', DATE(transaction_created_at)) AS mon_year, 
  COUNT(DISTINCT(indexer)) AS `indexer_count`
FROM 
  `graph-mainnet.internal_metrics.metrics_indexer_allocations` 
WHERE 
  `transaction_created_at` >= CAST('2023-01-01T00:00:00.000000' AS TIMESTAMP)
GROUP BY 
  mon_year, subgraph_deployment
ORDER BY 
  PARSE_DATE('%b-%Y', mon_year)  
