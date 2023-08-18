SELECT 
  indexer,
  COUNT(DISTINCT(subgraph_deployment)) AS `count_distinct_subgraph_deployment`,
  COUNT(DISTINCT(transaction_id)) AS `count_distinct_transaction_id`,
  COUNT(DISTINCT(transaction_id)) - COUNT(DISTINCT(subgraph_deployment)) AS `delta_transactions_subgraphs`,
  SUM(query_fees_collected) AS `sum_query_fees_collected`,
  SUM(query_fee_rebates) AS `sum_query_fee_rebates`,
  SUM(indexing_rewards) AS `sum_indexing_rewards`,
  SUM(allocated_tokens) AS `sum_allocated_tokens`
FROM 
  `graph-mainnet.internal_metrics.metrics_indexer_allocations` 
WHERE 
  (`transaction_created_at` >= CAST(DATE_SUB(CURRENT_DATE(), INTERVAL 30 DAY) AS TIMESTAMP) AND query_fees_collected > 0)
GROUP BY
  indexer
ORDER BY
  sum_query_fees_collected
  DESC
