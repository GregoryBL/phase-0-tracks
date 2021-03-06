# Method to create a list
# input: {string of items separated by spaces (example: "carrots", "apples", cereal pizza")
# steps:
# create a hash
#split the string up array of items
#for each item put item into array as the key with the value 1
# print the list to the console call print Method on the bottom
# output: list, hash

def create_grocery_hash(item_string)
  grocery_hash = Hash.new
  item_array = item_string.split(" ") # array of items passed in

  item_array.each do |item|
    grocery_hash[item.to_sym] = 1 # add to array with qty = 1 as default
  end

  print_grocery_hash(grocery_hash) # returns the hash so it implicitly returns the hash
end

# Method to add an item to a list
# input: item name and optional quantity, and hash
# steps:
# add item and quantity to a hash
#item = key and the quantity = data

# output:
# return hash [items => quantity]

def add_item_to_grocery_hash(item_string, grocery_hash, quantity)
  if !grocery_hash.include?(item_string.to_sym) # item_string is not in grocery_hash
    grocery_hash[item_string.to_sym] = quantity
    print_grocery_hash(grocery_hash)
  else
    update_quantity_of_item(grocery_hash[item_string.to_sym] + quantity, item_string, grocery_hash)
  end
end


# Method to remove an item from the list
# input: item name, and hash
# steps:
#hash.delete(item)
# output:return hash

def remove_item_from_grocery_hash(item_string, grocery_hash)
  grocery_hash.delete(item_string.to_sym)
  print_grocery_hash(grocery_hash)
end


# Method to update the quantity of an item
# input: update quantity,item and hash
# steps:
# hash.key to check if item is the hash already
# if it is in their update item and quantity
# if not can't update list
# output: return hash {item => quantity}

def update_quantity_of_item(quantity, item_string, grocery_hash)
  if grocery_hash.include?(item_string.to_sym)
    grocery_hash[item_string.to_sym] = quantity
  else
    puts "Item #{item_string} not already in the list."
  end
  print_grocery_hash(grocery_hash)
end

# Method to print a list and make it look pretty
# input: take in the list
# steps:
# get all the name from the hash
# then the values of each name from the hash
# print the name: and quantity
# output: return hash

def print_grocery_hash(grocery_hash)
  item_array = grocery_hash.keys
  puts "-------------------"
  if item_array.length == 0
    puts "Grocery list is empty"
  end
  item_array.each do |item| # item is a symbol already
    puts "#{item.to_s}: #{grocery_hash[item]}"
  end
  puts "-------------------"
  grocery_hash
end

# TESTS

grocery_list = create_grocery_hash("")
add_item_to_grocery_hash("Lemonade", grocery_list, 2)
add_item_to_grocery_hash("Tomatoes", grocery_list, 3)
add_item_to_grocery_hash("Onions", grocery_list, 1)
add_item_to_grocery_hash("Ice Cream", grocery_list, 4)
remove_item_from_grocery_hash("Lemonade", grocery_list)
update_quantity_of_item(1, "Ice Cream", grocery_list)
puts "\nFinal List:"
print_grocery_hash(grocery_list)

## Reflect

# What did you learn about pseudocode from working on this challenge?
# We had a hard time figuring out just how much pseudocode to write. It's a weird balance between figuring out every detail (which involves knowing about ruby methods) and doing too little so that you have to figure out the algorithm as well as the syntax.

# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays would have been harder to use because we had two linked items to keep track of. One possibility would have been to keep 2 arrays, or an array that holds 2-element arrays, but the fact that a hash keeps keys unique (making sure we don't add carrots twice) and allows you to use names instead of positions to get and set the quantities makes it much nicer in practice.
# What does a method return?
# A method returns a single object (could be a data structure).
# What kind of things can you pass into methods as arguments?
# Any object. You also can pass a method by making it into a method object.
# How can you pass information between methods?
# One way is to call one method from another by putting it in a parameter. Another way is to use global state that both methods can access.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# I think I understand this material pretty well. One thing I'm not sure about is whether it's better to keep global state or to pass that state around in the parameters of methods. Our guide, Sara, said either way is fine, but it's hard for me to decide in the moment which I should do.

