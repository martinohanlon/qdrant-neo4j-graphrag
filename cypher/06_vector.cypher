// Use vector index to find chunks
WITH genai.vector.encode(
    "What are the risks that Microsoft faces?",
    "OpenAI",
    { token: $token }) AS userEmbedding
CALL db.index.vector.queryNodes('chunkEmbeddings', 6, userEmbedding)
YIELD node, score
RETURN node
