class Santa
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end
end

# TESTS

test_santa = Santa.new("gender", "ethnicity")
test_santa.eat_milk_and_cookies("chocolate chip cookie")
test_santa.speak

santas = []

genders = ["male", "female", "N/A", "fluid"]
ethnicities = ["Latino", "American Indian", "Martian", "Wood Elf"]

genders.each_with_index do |gender, ind|
  santas << Santa.new(gender, ethnicities[ind])
end

p santas