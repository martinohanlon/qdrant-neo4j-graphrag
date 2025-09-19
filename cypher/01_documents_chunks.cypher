// Display documents and their chunks
MATCH (d:Document)<-[f:FROM_DOCUMENT]-(c:Chunk)
RETURN d,f,c

