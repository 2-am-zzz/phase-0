# 8.5: More Schemas

## Release 2: Create a One-to-one Schema

Here's a schema for people with social media accounts. Not everyone will have
every social media account or even any at all, so we create a one-to-one
relationship because every social media account is unique to a person.

![One to One Schema](imgs/one-to-one-schema.png)

## Release 4: Refactor

A schema for grocery lists and their items in a many-to-many schema.

![Many to Many Schema](imgs/release-4-schema.png)

## Release 6: Reflect

* What is a one-to-one database?
	* A one-to-one relationship is a connection between two tables where each
	entry of one table is unique to the entry of the other table and vice
	versa.
* When would you use a one-to-one database? (Think generally, not in terms of the example you created).
	* We would use a one-to-one relationship if we have a set of related fields
	that may end up being NULL. By creating the one-to-one relation, we are 
	cleaning up the main table while also having the information on fields
	available somewhere in the database.
* What is a many-to-many database?
	* A many-to-many relationship is where two tables have entries that can
	point to multiple entries in the other table in BOTH directions.
* When would you use a many-to-many database? (Think generally, not in terms of the example you created).
	* We would have a many-to-many relationship if we have two tables that 
	can act as categories or groupings for a set of entries for each other.
* What is confusing about database schemas? What makes sense?
	* Although the many-to-many relationship is a bit confusing to me so far,
	I do get the concept--I think with enough practice though, I'll be able
	to get it squared away. Everything else makes sense though, including
	connecting foreign keys to recognize a unique row in another table.