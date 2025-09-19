// Discover risk factors across all companies
MATCH (c:Company)-[:FACES_RISK]->(r:RiskFactor)
RETURN c.name, r.name
LIMIT 50

