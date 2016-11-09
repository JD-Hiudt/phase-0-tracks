


# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("contacts.db")
db.results_as_hash = true

# create a contact list table 
contact_list = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    favorites VARCHAR(255)
  );
SQL

db.execute(contact_list)
# LOGIC

# Add Contact
def create_contact(db, first_name, last_name)
  db.execute("INSERT INTO contacts (first_name, last_name) VALUES (?, ?)", [first_name, last_name])
end

# View Contacts by First Name
def view_contacts_by_first_name(db)
  list = db.execute("SELECT * FROM contacts ORDER BY first_name ASC")
  list.each do |contact|
    puts "#{contact['first_name']} #{contact['last_name']}"
  end
end

# View Contacts by Last Name
def view_contacts_by_last_name(db)
  list = db.execute("SELECT * FROM contacts ORDER BY last_name ASC")
  list.each do |contact|
    puts "#{contact['last_name']}, #{contact['first_name']}"
  end
end

# Mark Contact As Favorite
def make_contact_favorite(db, first_name, last_name)
  db.execute("UPDATE contacts SET favorites = 'Favorite Contact' WHERE first_name=(?)", [first_name])
  puts "#{first_name} #{last_name} has been added to your favorites"
end

# USER INTERFACE



# TEST 


create_contact(db, 'Joseph', 'Hiudt')
create_contact(db, 'Daniel', 'Hiudt')
create_contact(db, 'Jacob', 'Hiudt')
create_contact(db, 'Zac', 'Hiudt')
create_contact(db, 'Matt', 'Hiudt')
make_contact_favorite(db, 'Joseph', 'Hiudt')
view_contacts_by_first_name(db)
view_contacts_by_last_name(db)




