# [MySQL VS SQLite VS PostgreSQL][^1]

This page try to compare the three main RDBMS SQLite SQLite, MySQL, PostgreSQL, firstly to know the advantage and disadvantage of each RDMS. Then base on this, it is easy to understand the scenario: when to use and when not to use.   


## SQLite
Powerful embedded relation RDBMS
- Advantage
 	- 1. file based, extremely portable
	- 2. standards-aware, use SQL,only some feature ommited(Right Outer Join or FOR EACH STATEMENT)
	- 3. good for developing and testing
- Disadvantage
	- 1. No User management
	- 2. Lack of possibility to tinker with for addtional performance

- When to Use SQLite
	- 1. Embbed Applications
	- 2. Disk accsess replacement
	- 3. Testing

- When not to Use SQLite
	- 1. Multi-user application, different clients need to access the same database 
	- 2. High write volume, SQLite only can one write access

## MySQL
most popular and common used distributed RDBMS
- Advantage
	- 1. Easy to work with, installed easily and GUI support
	- 2. Feathure rich, many SQL function
	- 3. Secure
	- 4. scalable and powerful
	- 5. speedy
- Disadvantage
	- 1. Known limitation
	- 2. Reliability issues, 
	- 3. Stagnated development, after acquisison, the development changes to be slow
- When to use MySQL
	- 1. Distributed operation
	- 2. High Security
	- 3. web-sites and web-applications
	- 4. custom solution, rich configuration setting and operation modes
- When not to Use MySQL
	- 1. SQL compliance, 
	- 2. Concurrency, concurrent read-writes can be problematic
	- 3. lack of feathures,depends on the database-engine, mysql may lose some function, such as full-text search

## PostgreSQL
most advanced, SQL-compliant and objective-RDBMS
- Advantage
	- 1. Open source SQL standard compliant RDBMS
	- 2. Strong Community
	- 3. Strong third part support
	- 4. Extensible
	- 5. Objective
	- 6. Full-text search
	- 7. Multi Index Queries
	- 8. Custom data types, Json, xml ,ISBN...
	- 9. Wasted space is TOASTED, automitically zip large file
	- 10. Store procedure can be write in python
	- 11. PostGIS for geospatial Data
- Disadvantage
	- 1. Performance, simple read-heavy operations may be less performance than MySQL, but can be solved by building the connection pool
	- 2. Popularity
	- 3. Hosting, will be hard than mysql/sqlite
- When to use PostgreSQL 
	- 1. Data integrity
	- 2. Complex and custom procedures
	- 3. Integration, easy to migrate with other database
	- 4. Complex design
- When not to use PostgreSQL
	- 1. Speed, in fast read operations
	- 2. Simple set up
	- 3. Replication


[^1]: https://www.digitalocean.com/community/tutorials/sqlite-vs-mysql-vs-postgresql-a-comparison-of-relational-database-management-systems


29/12/2016

