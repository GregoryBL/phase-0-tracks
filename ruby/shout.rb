module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" + " :D"
  end
end

puts Shout.yell_angrily("Go away")

puts Shout.yelling_happily("Hello")