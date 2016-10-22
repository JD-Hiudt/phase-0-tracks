# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # convert string to array
  # set default quantity
  # iterate through each item in array, applying items as keys and quantity as value
  # print the list to the console (reference print method)
# output: hash - grocery items as keys, quantity of items as values

# Method to add an item to a list
# input: item name and optional quantity
# steps: create new hash of just item and quantity to add, merge with main hash/list
# output: main hash/list now merged with new item listed

# Method to remove an item from the list
# input: name of item to be removed
# steps: delete item (and associated quantity) from hash 
# output: main hash sans deleted item

# Method to update the quantity of an item
# note: determined in refactoring that add item to list can also perform this function since adding an items 

# Method to print a list and make it look pretty
# input: list as hash
# steps: iterate through list 
# output: return each item and quantity as string

$grocery_list = {}

def create_list(grocery_items)
  grocery_items = grocery_items.split(' ')
  quantity = 1
  grocery_items.each do |item|
    $grocery_list[item] = quantity
  end
  add_item_update_quantity('lemonade', 2)
  add_item_update_quantity('tomatoes', 3)
  add_item_update_quantity('onions', 1)
  add_item_update_quantity('ice cream', 4)
  remove_item('lemonade')
  add_item_update_quantity('ice cream', 1)
  print_data
end

def add_item_update_quantity(item, quantity)
  update_grocery_item = {}
  update_grocery_item[item] = quantity
  $grocery_list.merge!(update_grocery_item)
  return $grocery_list
end

def remove_item(item)
  $grocery_list.delete(item)
  return $grocery_list
end

def print_data
  $grocery_list.each do |item, quantity|
    puts "#{item}, qty: #{quantity}"
  end
  return $grocery_list
end

create_list("carrots apples cereal pizza")
