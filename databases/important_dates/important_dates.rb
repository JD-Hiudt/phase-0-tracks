# require gems
require 'sqlite3'

# create SQLite3 database
def db
  db = SQLite3::Database.new("dates_events.db")
  db.results_as_hash = true
  db
end
# create a important dates table
def table
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
end
# LOGIC

# add important date
def add_date(db, event_type, people, date_celebrated, years_celebrated)
  db.execute("INSERT INTO important_dates_table (event_type, people, date_celebrated, years_celebrated) VALUES (?, ?, ?, ?)", [event_type, people, date_celebrated, years_celebrated])
end

# edit important date
def update_entry(db, column, new_info, column_id, id)
  db.execute("UPDATE important_dates_table SET #{column} = #{new_info} WHERE #{column_id} = #{id}")
end

# remove important date
def remove_date(db, column, id)
  db.execute("DELETE FROM important_dates_table WHERE #{column} = #{id}")
end

# view dates by type
def view_dates_by_date(db)
  view = db.execute("SELECT * FROM important_dates_table ORDER BY date_celebrated, event_type ASC")
  puts "----------"
  view.each do |event|
    puts "#{event['date_celebrated']}"
    puts "#{event['people']} - #{event['event_type']} (#{event['years_celebrated']} years)"
    puts "----------"
  end
end

# view all entries
def view(db)
  view = db.execute("SELECT * FROM important_dates_table")
  view.each do |event|
    puts "#{event['id']}: #{event['people']}'s #{event['event_type']}"
  end
end
# USER INTERFACE
def run
  db
  table
  until exit_prog
    user_message
    action = gets.chomp
    case action
      when '1'
        case_1
        add_date(db, event_type, people, date_celebrated, years_celebrated)
      when '2'
        case_2
        update_entry(db, column, new_info, column_id = 'id', id)
      when '3'
        case_3
        remove_date(db, column = 'id', id)
      when '4'
        case_4
      when '5'
        exit_prog
    end
  end
end

def user_message
  puts "Welcome to your personal important dates directory"
    sleep(1)
  puts "Please select which action you'd like to take (ex. '1')"
    sleep(1)
  puts "1: ADD an important date or event"
  puts "2: UPDATE an existing date or event"
  puts "3: DELETE an existing date or event"
  puts "4: VIEW your entire important dates directory"
  puts "5: QUIT program"
end

def case_1
  puts "What type of event would you like to add? (ex. 'Birthday', 'Anniversary')"
  event_type = gets.chomp.capitalize
  puts "Who is celebrating this special occasion? (ex. 'John Smith', 'Adam & Eve Jones')"
  people = gets.chomp.capitalize
  puts "What date is this occasion celebrated? (ex. 12/25)"
  date_celebrated = gets.chomp
  puts "How many years has this occasion been celebrated? (ex. '25')"
  years_celebrated = gets.chomp
end

def case_2
  puts "Using the number identifier, which entry would you like to update?"
  view(db)
  id = gets.chomp
  puts "Which of the following would you like to update: Name, Date, Event Type, Years Celebrated?"
  input = gets.chomp.downcase
    if input == 'name'
      column = 'people'
    elsif input == 'date'
      column = 'date_celebrated'
    elsif input == 'event type'
      column = 'event_type'
    elsif input == 'years celebrated'
      column = 'years_celebrated'
    end
  puts "Please update the #{input} now"
  new_info = gets.chomp
end

def case_3
  puts "Using the number identifier, which entry would you like to update?"
  view(db)
  id = gets.chomp
end

def case_4
  view_dates_by_date(db)
end

def exit_prog
  exit_program = false
end


run






#TEST LOGIC
#add_date(db, 'Birthday', 'Jacob Hiudt', '2/22', '26')
#add_date(db, 'Anniversary', 'Marty & Sally Hiudt', '6/22', '35')
#add_date(db, 'Birthday', 'Dana Askin', '9/13', '25')
#view_dates_by_date(db)


