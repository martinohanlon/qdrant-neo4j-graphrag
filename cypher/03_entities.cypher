// Count what entities were extracted by type
MATCH (e)
WHERE NOT e:Document AND NOT e:Chunk
RETURN labels(e) as entityType, count(e) as count
ORDER BY count DESC

