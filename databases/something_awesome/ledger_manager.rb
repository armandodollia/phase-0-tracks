require 'sqlite3'

class Ledger_manager
  def initialize(ledger)
    @ledger = ledger
  end

  def lend_item(item, borrower)
    @ledger.execute("INSERT INTO items (item, borrower, returned) VALUES (?, ?, 0)", [item, borrower])
  end

  def return_item(item)
    @ledger.execute("UPDATE items SET returned = 1 WHERE item=?", [item])
  end

  def delete_row(item, borrower)
    @ledger.execute("DELETE FROM items WHERE item = ? AND borrower = ?", [item, borrower])
  end

  def delete_borrower(borrower)
    @ledger.execute("DELETE FROM items WHERE borrower = ?", [borrower])
  end

  def delete_item(item)
    @ledger.execute("DELETE FROM items WHERE item = ?", [item])
  end

  def print
    logs_table = @ledger.execute("SELECT * FROM items")
    logs_table.each do |log|
      if log['returned'] == 1
        puts "#{log['borrower']} has returned the #{log['item']}"
      else
        puts "#{log['borrower']} has not returned the #{log['item']}"
      end
    end
  end

  def create_table
    create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS items(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    borrower VARCHAR(255),
    returned BOOLEAN
    )
    SQL
    ledger.execute(@create_table_cmd)
  end
end