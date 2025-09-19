// Customers and their products
MATCH (c:Company)-[m:MENTIONS]->(p:Product)
RETURN c,m,p

