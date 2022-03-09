// Visualize DB schema
CALL db.schema.visualization()

// View entire graph
MATCH (n) RETURN n 
// LIMIT 100   <-- optional, but useful to minimize memory usage

// Find all connections from a source node
MATCH (p:Person {name: 'Tom Hanks'})-[]->(m:Movie)
RETURN p, m

// Find specific relationships for a source node
MATCH (p:Person)-[r:DIRECTED]->(m:Movie)
WHERE p.name = 'Tom Hanks'
RETURN p, m