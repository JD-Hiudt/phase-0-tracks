# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("kittens.db")

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE kittens(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a kittens table (if it's not there already)
db.execute(create_table_cmd)

# add a test kitten

# explore ORM by retrieving data

# add LOOOOTS of kittens!
# so. many. kittens. 
# KittenExplosion