# require gems
require 'sqlite3'

# create SQLite3 database
db = SQLite3::Database.new("dates_events.db")
db.results_as_hash = true

# create a important dates table
create_important_dates = <<-SQL
  CREATE TABLE IF NOT EXISTS important_dates_table (
    id INTEGER PRIMARY KEY,
    event_type VARCHAR(255),
    people VARCHAR(255),
    date_celebrated VARCHAR(255),
    years_celebrated VARCHAR(255)
  );
SQL

db.execute(create_important_dates)

# LOGIC

# add important date
def add_date(db, event_type, people, date_celebrated, years_celebrated)
  db.execute("INSERT INTO important_dates_table (event_type, people, date_celebrated, years_celebrated) VALUES (?, ?, ?, ?)", [event_type, people, date_celebrated, years_celebrated])
end

# remove important date
def remove_date(db, column, id)
  db.execute("DELETE FROM important_dates_table WHERE #{column} = #{id}")
end

# edit important date
def update_entry(db, column, new_info, column_id, id)
  db.execute("UPDATE important_dates_table SET #{column} = #{new_info} WHERE #{column_id} = #{id}")
end
# view dates by type
def view_dates_by_date(db)
  view = db.execute("SELECT * FROM important_dates_table ORDER BY date_celebrated, event_type ASC")
  view.each do |event|
    puts "#{event['date_celebrated']}"
    puts "#{event['people']} - #{event['event_type']} (#{event['years_celebrated']} years)"
    puts "----------"
  end
end
# USER INTERFACE

add_date(db, 'Birthday', 'Jacob Hiudt', '2/22', '26')
add_date(db, 'Anniversary', 'Marty & Sally Hiudt', '6/22', '35')
add_date(db, 'Birthday', 'Dana Askin', '9/13', '25')
view_dates_by_date(db)


