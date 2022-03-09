// Visualize the database schema
CALL db.schema.visualization()

// Count the number of nodes in the graph
MATCH (n) RETURN COUNT(n)

// Find some relationships and their properties
MATCH (p1:Person)-[r]->(p2:Person) 
RETURN p1.name, r, r.weight, p2.name

// Match a node by its property(ies)
MATCH (p1:Person {name: 'Eddard Stark'})
RETURN p1

// A more complicated match given a relationship type
MATCH (p1:Person)-[r:INTERACTS]->(p2:Person) 
WHERE p1.name = 'Catelyn Stark'
RETURN p1.name AS p1_name, r.weight AS weight, p2.name AS p2_name 
ORDER BY weight DESC
LIMIT 10

// Six degrees of Kevin Bacon (or 3 degrees of Jon Snow)
MATCH (p1:Person {name: 'Jon Snow'})-[*1..3]->(p2:Person)
WHERE p1 <> p2
RETURN DISTINCT(p2.name) AS target 

