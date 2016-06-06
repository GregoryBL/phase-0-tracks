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

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    removed_reindeer = @reindeer_ranking.delete(reindeer_name)
    if removed_reindeer
      @reindeer_ranking << removed_reindeer 
    end
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
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

puts test_santa.ethnicity
puts test_santa.age

test_santa.gender = "new gender"

10.times {test_santa.celebrate_birthday}
puts test_santa.age

test_santa.get_mad_at("Rudolph")
test_santa.get_mad_at("Not a reindeer")
p test_santa