# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split user input at spaces and store as an array
  # iterate through array and store each element as a key in the hash 
  # set default quantity to zero
  # print the list to the console using our printing method below [can you use one of your other methods here?]
# output: hash (list)

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: take list and shovel in the new item name as the key and set the
# quantity to zero or provided quantity
# output: hash (list)

# Method to remove an item from the list
# input: list, item name 
# steps: check to see if item exists in list, if it does, remove item plus value
# output: hash (list)

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: check if item exists in list, if it does, update the quantity
# output: list

# Method to print a list and make it look pretty
# input: list
# steps: iterate through hash, printing each value in a string
# output: a string 

def list_creator(string_items)
  string_items_array = string_items.split(" ")
  grocery_list = {} 
  string_items_array.each {|item| grocery_list[item] = 0}
  p grocery_list
  grocery_list 
end

grocery_list = list_creator("potato tomato orange beans peppers")

def add_update_item(grocery_list, new_item, quantity = 0)
  grocery_list[new_item] = quantity
  grocery_list
end

def remove_item(grocery_list, item_to_remove)
  grocery_list.delete(item_to_remove)
  grocery_list
end

def print_grocery_list(grocery_list)
  grocery_list.each {|item, quantity| puts "#{item}, qty: #{quantity}"}
end

p add_update_item(grocery_list, "tomato", 30)
p remove_item(grocery_list, "potato")
print_grocery_list(grocery_list)