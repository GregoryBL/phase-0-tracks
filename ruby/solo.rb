## Go board class

### Attributes
# Size
# Points Array
# Material
# Number of Stones

### Methods
# Play stone (color, location)
# Remove stone(location)
# Remove all stones

# Doesn't encode the rules of go, just the state and has add/remove methods
# 1D array holds a 2D array of points from bottom left to bottom right, then up.
class Goban
  attr_reader :size, :material, :number_of_stones
  attr_accessor :location_of_goban

  def initialize(size, material, location = "table")
    if size > 26
      @size = 26
      puts "Size set to 26."
    else
      @size = size
    end
    @material = material
    @points_array = Array.new(@size ** 2, :empty)
    @number_of_stones = 0
    @location_of_goban = location
  end

  def remove_stone(location)
    @number_of_stones -= 1
    @points_array[location_to_point(location)] = :empty
  end

  def add_stone(color, location)
    add_color = (color.downcase == "white") ? :white : :black
    @number_of_stones += 1
    @points_array[location_to_point(location)] = add_color
  end

  def remove_all_stones
    @points_array = Array.new(@size ** 2, :empty)
    @number_of_stones = 0
  end

  def read_stone(location)
    puts @points_array[location_to_point(location)]
  end

  #translates a location ("letterNumber") to its point in the point array
  def location_to_point(location)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    letter_index = alphabet.index(location[0].downcase)
    number = location[1..-1].to_i - 1
    if letter_index > @size || number > @size
      raise "That point does not exist on a goban of this size"
    end
    number * @size + letter_index
  end

  def describe
    puts "This goban is #{@size}x#{@size} and has #{number_of_stones} stones on it."
    puts "It is made of #{@material} and is on the #{location_of_goban}."
    puts "The point array is #{@points_array}."
  end
end

# INTERFACE
goban_array = []

loop do
  puts "Would you like to create a goban? (y/n)"
  if gets.chomp != "y"
    break
  end

  puts "What size should the goban be?"
  goban_size = gets.chomp.to_i

  puts "What material should the goban be?"
  goban_material = gets.chomp

  puts "Where do you want to place the goban?"
  goban_location = gets.chomp

  goban_array << Goban.new(goban_size, goban_material, goban_location)
end

goban_array.each { |goban| goban.describe }

# I printed using each because I wanted to be able to print an attribute that wasn't exposed, but I could have done it with a while loop and accessed the properties like:
#   puts goban_array[ctr].size
# for a counter variable increasing from 0 while ctr < goban_array.length

# TESTS

# test_goban = Goban.new(13, "kaya", "floor")
# test_goban2 = Goban.new(19, "bamboo")

# test_goban.add_stone("black", "K13")
# test_goban.add_stone("white", "D4")

# test_goban.read_stone("K13")
# test_goban.read_stone("D4")
# test_goban.remove_stone("K13")
# test_goban.read_stone("k13")
# test_goban.remove_all_stones
# test_goban.read_stone("D4")

# puts test_goban.size
# puts test_goban.material
# puts test_goban.location_of_goban
# test_goban.location_of_goban = "counter"
# puts test_goban.location_of_goban