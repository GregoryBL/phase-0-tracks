def method_that_takes_a_block
  puts "Before the block"
    yield("First", "Second")
  puts "After the block"
end

numbers_array = ["1", "2", "3", "4", "5"]
letters_hash = {first: "a", second: "b", third: "c"}

method_that_takes_a_block { |item1, item2| puts "Block was given #{item1} and #{item2}"}

p numbers_array
numbers_array.each { |number| puts "We've reached the number #{number}" }
p numbers_array
numbers_array.map! { |number| number.to_i + 1 }
p numbers_array

p letters_hash
letters_hash.each { |ordinal, letter| puts "The #{ordinal} letter is #{letter}" }
p letters_hash