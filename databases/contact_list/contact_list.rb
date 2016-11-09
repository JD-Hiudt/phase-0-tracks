


# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("contacts.db")

# create a contact list table 
create_contact_list = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_date date,
  )
SQL

db.execute(create_contact_list)
# LOGIC

# Add Contact

# View Contacts by First Name

# View Contacts by Last Name

# Mark Contact As Favorite

# USER INTERFACE

# TEST (create list of 20 fake contacts)