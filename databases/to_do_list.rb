require 'sqlite3'

db = SQLite3::Database.new("to_do_list.db")
db.results_as_hash = true

create_table_list = <<-SQL
  CREATE TABLE IF NOT EXISTS list(
    id INTEGER PRIMARY KEY,
    things_to_do VARCHAR(255),
    is_done VARCHAR(255)
  )
SQL

db.execute(create_table_list)

def create_list(db, things_to_do, is_done)
  db.execute("INSERT INTO list (things_to_do, is_done) VALUES (?, ?)", [things_to_do, is_done])
end

def 

create_list(db, "clean dishes", "no")

