require 'sqlite3'
require_relative 'ledger_manager'

#instantiate Ledger_manager class
ledger_manager = Ledger_manager.new

rw_prompt = "" # Initialize loop break condition
until rw_prompt == "exit" # Loop until the user says exit

# Ask the user whether they would like to add items or view the current ledger
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
      ledger_manager.lend_item(item, borrower)
    end

  elsif rw_prompt == "view"
    ledger_manager.print

  elsif rw_prompt == "return"
    puts "How many items are being returned?"
    number_of_items = gets.chomp.to_i
    number_of_items.times do
      # Get values from user
      puts "Please enter the item being returned"
      item = gets.chomp
      #set the item as returned
      ledger_manager.return_item(item)
    end

  elsif rw_prompt == 'delete row'
    puts "Please type the name of the person you want to remove"
    borrower = gets.chomp
    puts "Please type the item they borrowed"
    item = gets.chomp
    ledger_manager.delete_row(item, borrower)

  elsif rw_prompt == 'delete borrower'
    puts "Please type the name of the person you want to remove from the database"
    borrower = gets.chomp
    ledger_manager.delete_borrower(borrower)

  elsif rw_prompt == 'delete item'
    puts "Please type the name of the item you want to remove from the database"
    item = gets.chomp
    ledger_manager.delete_item(item)

  elsif rw_prompt == 'exit'
    puts "Thank you for using Armando's ledger program! :)"

  else
    puts "ERROR! I do not recognize that input, please try again"
  end
end