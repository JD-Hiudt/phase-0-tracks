# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # 
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

$grocery_list = {}

def create_list(grocery_items)
  grocery_items = grocery_items.split(' ')
  quantity = 1.to_s
  grocery_items.each do |item|
    $grocery_list[item] = quantity
  end
  print_data
end

def print_data
  $grocery_list.each do |item, quantity|
    return $grocery_list
  #puts "#{item}, qty: #{quantity}"
  end
end

p create_list("carrots apples cereal pizza")
