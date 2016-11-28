# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("contacts.db")
db.results_as_hash = true

# create a important dates table
important_dates = <<-SQL
  CREATE TABLE IF NOT EXISTS contacts (
    id INTEGER PRIMARY KEY,
    event_type VARCHAR(255),
    people VARCHAR(255),
    date_celebrated VARCHAR(255),
    years_celebrated VARCHAR(255)
  );
SQL 

db.execute(important_dates)

# LOGIC

# add important date

# remove important date

# edit important date

# USER INTERFACE
