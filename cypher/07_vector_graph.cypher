// vector search + graph
WITH genai.vector.encode(
    "What are the risks that Microsoft faces?",
    "OpenAI",
    { token: $token }) AS userEmbedding
CALL db.index.vector.queryNodes('chunkEmbeddings', 6, userEmbedding)
YIELD node, score

MATCH (node)-[:FROM_DOCUMENT]->(doc:Document)-[:FILED]-(company:Company)-[fr:FACES_RISK]->(risk:RiskFactor)
RETURN company, fr, risk
