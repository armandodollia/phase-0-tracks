# Create ledger class accepting name, item
require 'sqlite3'

# Creates ledger database
ledger = SQLite3::Database.new("ledger.db")

# Creates table if it does not already exist
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    item VARCHAR(255),
    returned INT
    )
SQL

ledger.execute(create_table_cmd)
