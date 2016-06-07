class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number_of_times)
    number_of_times.times{puts "Woof!"}
  end
  
  def roll_over
    puts "*roll over*"
  end

  def dog_years(human_years)
    human_years*7
  end

  def play_dead
    puts "PLAY DEAD!"
  end

  def initialize
    puts "Initializing new puppy instance.."
  end
end

class Robot

  def initialize
    puts "Initializing Robot"
  end

  def search_for_Luke_Skywalker
    puts "Couldn't find Luke. Bleep Boop."
  end

  def walk(number_of_steps)
    number_of_steps.times { puts "Clomp." }
  end

  def calculate_distance(distance)
    if distance > 2
      puts "Too far; I'm lazy."
    else
      puts "Ok I'll walk #{distance} steps."
      walk(distance)
    end
    distance
  end
end

puppy = Puppy.new
puppy2 = Puppy.new

puppy.fetch "ball"

puppy.speak 3

puppy.roll_over

puts puppy.dog_years 9

puppy.play_dead

robot_instance = Robot.new
robot_instance.search_for_Luke_Skywalker
robot_instance.walk(10)
robot_instance.calculate_distance(5)
robot_instance.calculate_distance(1)