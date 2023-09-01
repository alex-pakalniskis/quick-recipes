SELECT
  mainnet_owner_wallet,
  SUM(query_fee) AS `sum_query_fee`,
  COUNT(DISTINCT(subgraph_id)) AS `distinct_subgraph_ids`
FROM 
  `graph-mainnet.internal_metrics.metrics_subgraph_queries_categories`
GROUP BY 
  mainnet_owner_wallet
ORDER BY 
  sum_query_fee
  DESC

