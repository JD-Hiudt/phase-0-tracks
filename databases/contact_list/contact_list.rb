


# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("contacts.db")

# create a contact list table 
contact_list = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_date date
  );
SQL

db.execute(contact_list)
# LOGIC

# Add Contact
def create_contact(db, first_name, last_name, birth_date)
  db.execute("INSERT INTO contacts (first_name, last_name, birth_date) VALUES (?, ?, ?)", [first_name, last_name, birth_date])
end
# View Contacts by First Name

# View Contacts by Last Name

# Mark Contact As Favorite

# USER INTERFACE

# TEST 

#db.execute("INSERT INTO contacts (first_name, last_name, birth_date) VALUES ('Bob', 'Jones', 10/10/1990)")

20.times do |contact|
  create_contact(db, Faker::Name.first_name, Faker::Name.last_name, 0)
end