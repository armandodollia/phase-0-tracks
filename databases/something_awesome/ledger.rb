require 'sqlite3'

def lend_item(ledger, item, name)
  ledger.execute("INSERT INTO items (item, name, returned) VALUES (?, ?, ?)", [item, name, 'not returned'])
end

def return_item(ledger, item)
  ledger.execute("UPDATE items SET returned='returned' WHERE item=(?)", [item])
end

# Creates ledger database and have it output results as a hash
ledger = SQLite3::Database.new("ledger.db")
ledger.results_as_hash = true


# Creates table if it does not already exist
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    name VARCHAR(255),
    returned VARCHAR(255)
    )
SQL

#Creates the table
ledger.execute(create_table_cmd)

#ask user for the number of items they would like to add to their ledger
# puts "How many items would you like to log?"
# number_of_items = gets.chomp


lend_item(ledger, "piano", "John")

return_item(ledger, "piano")