SELECT 
  indexer,
  MIN(transaction_created_at) AS `earliest_transaction`,
  MAX(transaction_created_at) AS `latest_transaction`,
  DATE_DIFF(MAX(transaction_created_at), MIN(transaction_created_at), DAY) AS `days_diff`,
  COUNT(DISTINCT(subgraph_deployment)) AS `count_distinct_subgraph_deployment`,
  SUM(indexing_rewards) AS `sum_indexing_rewards`,
  SUM(query_fees_collected) AS `sum_query_fees_collected`,
  SUM(query_fee_rebates) AS `sum_query_fee_rebates`
FROM 
  `graph-mainnet.internal_metrics.metrics_indexer_allocations` 
GROUP BY
  indexer
