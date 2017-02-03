require 'sqlite3'

def lend_item(ledger, item, borrower)
  ledger.execute("INSERT INTO items (item, borrower, returned) VALUES (?, ?, 'not returned')", [item, borrower])
end

def return_item(ledger, item)
  ledger.execute("UPDATE items SET returned='returned' WHERE item=?", [item])
end

# Creates ledger database and have it output results as a hash
ledger = SQLite3::Database.new("ledger.db")
ledger.results_as_hash = true


# Creates table if it does not already exist
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    borrower VARCHAR(255),
    returned VARCHAR(255)
    )
SQL

#Creates the table
ledger.execute(create_table_cmd)

# Ask the user whether they would like to add items or view the current ledger
puts "Type 'log' to add more items to ledger, type 'return' to set an item as returned, or type 'view' to print the ledger"
rw_prompt = gets.chomp

if rw_prompt == "log"
  #ask user for the number of items they would like to add to their ledger
    puts "How many items would you like to log?"
    number_of_items = gets.chomp.to_i

    number_of_items.times do
      # Get values from user
      puts "Please enter the item being lent"
      item = gets.chomp
      puts "Please enter the name of the borrower"
      borrower = gets.chomp
      #Store values in database
      lend_item(ledger, item, borrower)
    end
elsif rw_prompt == "view"
  # Store items table in a ledger
  logs_table = ledger.execute("SELECT * FROM items")
  # iterate through ledger and print items
  logs_table.each do |log|
    puts "#{log['borrower']} has #{log['returned']} the #{log['item']}"
  end
elsif rw_prompt == "return"
    puts "How many items are being returned?"
    number_of_items = gets.chomp.to_i

    number_of_items.times do
      # Get values from user
      puts "Please enter the item being returned"
      item = gets.chomp
      #set the item as returned
      return_item(ledger, item)
    end
end


