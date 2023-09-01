SELECT
  mainnet_display_name,
  SUM(query_fee) as `sum_query_fee`
FROM 
  `graph-mainnet.internal_metrics.metrics_subgraph_queries_categories`
GROUP BY 
  mainnet_display_name
ORDER BY 
  sum_query_fee
  DESC
