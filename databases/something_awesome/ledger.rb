require 'sqlite3'

def lend_item(ledger, item, borrower)
  ledger.execute("INSERT INTO items (item, borrower, returned) VALUES (?, ?, ?)", [item, borrower, 0])
end

def return_item(ledger, item)
  ledger.execute("UPDATE items SET returned = ? WHERE item=?", [1, item])
end

def delete_row(ledger, item, borrower)
  ledger.execute("DELETE FROM items WHERE item = ? AND borrower = ?", [item, borrower])
end

def delete_borrower(ledger, borrower)
  ledger.execute("DELETE FROM items WHERE borrower = ?", [borrower])
end

def delete_item(ledger, item)
  ledger.execute("DELETE FROM items WHERE item = ?", [item])
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
returned BOOLEAN
)
SQL

#Creates the table
ledger.execute(create_table_cmd)

rw_prompt = "" # Initialize loop break condition
until rw_prompt == "exit" # Loop until the user says exit
# Ask the user whether they would like to add items or view the current ledger
#puts ""
puts "\nType 'log' to add more items to ledger"
puts "Type 'return' to set an item as returned"
puts "Type 'view' to print the ledger"
puts "Type 'delete row' to remove an row from the ledger"
puts "Type 'delete borrower' to remove all instances a borrower from the ledger"
puts "Type 'delete item' to remove all instances an item from the ledger"
puts "Type 'exit' when done"
rw_prompt = gets.chomp
puts ""

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
    if log['returned'] == 1
      puts "#{log['borrower']} has returned the #{log['item']}"
    else
      puts "#{log['borrower']} has not returned the #{log['item']}"
    end
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

elsif rw_prompt == 'delete row'
  puts "Please type the name of the person you want to remove"
  borrower = gets.chomp
  puts "Please type the item they borrowed"
  item = gets.chomp
  delete_row(ledger, item, borrower)

elsif rw_prompt == 'delete borrower'
  puts "Please type the name of the person you want to remove from the database"
  borrower = gets.chomp
  delete_borrower(ledger, borrower)

elsif rw_prompt == 'delete item'
  puts "Please type the name of the item you want to remove from the database"
  item = gets.chomp
  delete_item(ledger, item)

elsif rw_prompt == 'exit'
  puts "Thank you for using Armando's ledger program! :)"

else
  puts "ERROR! I do not recognize that input, please try again"
end
end