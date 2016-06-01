def method_that_takes_a_block
  puts "Before the block"
    yield("First", "Second")
  puts "After the block"
end

method_that_takes_a_block { |item1, item2| puts "Block was given #{item1} and #{item2}"}