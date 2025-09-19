// Find all financial metrics for a specific company
MATCH (c:Company {name: 'MICROSOFT CORP'})-[:HAS_METRIC]->(m:FinancialMetric)
RETURN c.name, m.name
LIMIT 10
