# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("dates_events.db")
db.results_as_hash = true

# create a important dates table
important_dates = <<-SQL
  CREATE TABLE IF NOT EXISTS dates_events (
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
def add_date(db, event_type, people, date_celebrated, years_celebrated)
  db.execute("INSERT INTO dates_events (event_type, people, date_celebrated, years_celebrated) VALUES (?, ?, ?, ?)", [event_type, people, date_celebrated, years_celebrated])
end
# remove important date

# edit important date

# USER INTERFACE



