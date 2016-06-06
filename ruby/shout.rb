# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words.upcase + "!!!" + " :D"
#   end
# end

# puts Shout.yell_angrily("Go away")

# puts Shout.yelling_happily("Hello")

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words.upcase + "!!!" + " :D"
  end
end

class Human
  include Shout
end

class Goat
  include Shout
end

leul = Human.new()
goat = Goat.new()

puts leul.yelling_happily("My name is Leul")
puts goat.yelling_happily("blaaaaaaaa")

puts leul.yell_angrily("Greg do the dishes")
puts goat.yell_angrily("blaaaaaaaa")