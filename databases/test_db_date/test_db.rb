require 'sqlite3'

date_db = SQLite3::Database.new "test.db"

date_db.execute <<-SQL
  create table if not exists dates (
    id INTEGER PRIMARY KEY,
    date_col INTEGER
  );
SQL

def insert_date(db, date)
  db.execute("insert into dates (date_col) VALUES (?);", date.strftime("%s").to_i)
end

def retreive_date(db, row)
  date_arr = db.execute("select date_col from dates")
  date_arr[row-1][0]
end

new_date1 = Time.now
new_date2 = Time.at(1000)

insert_date(date_db, new_date1)
insert_date(date_db, new_date2)

ret_date1 = Time.at(retreive_date(date_db, 1))
ret_date2 = Time.at(retreive_date(date_db, 2))

p ret_date1
p ret_date2