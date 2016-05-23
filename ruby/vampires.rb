puts "How many employees do you want to process?"
num_empl_left = gets.chomp.to_i

while num_empl_left > 0

  puts "What is your name?"
  name = gets.chomp
  # puts name

  puts "How old are you?"
  age = gets.chomp.to_i
  # puts age

  puts "What year were you born?"
  year_born = gets.chomp.to_i
  # puts year_born

  puts "Our company serves garlic bread. Should we order some for you?"
  order_garlic_bread = gets.chomp
  # puts order_garlic_bread

  puts "Would you like to enroll in the company's health insurance?"
  health_insurance = gets.chomp
  # puts health_insurance

  result = ""
  age_correct = ( age == ( 2016 - year_born ))
  willing_to_eat_garlic = order_garlic_bread.downcase == "yes"
  enroll_health_insurance = health_insurance.downcase == "yes"
  name_suspicious = ( name.downcase == "drake cula" ) || ( name.downcase == "tu fang" )

  # Results inconclusive set in first one and will carry through til the end unless another one is true.
  if age_correct && ( willing_to_eat_garlic || enroll_health_insurance )
    result = "Probably not a vampire."
  else
    result = "Results inconclusive."
  end

  if !age_correct && ( !willing_to_eat_garlic || !enroll_health_insurance )
    result = "Probably a vampire."
  end

  if !age_correct && !willing_to_eat_garlic && !enroll_health_insurance
    result = "Almost certainly a vampire."
  end

  if name_suspicious
    result = "Definitely a vampire."
  end

  # This could overwrite a stronger statement above, but the assignment isn't clear about how that should work.
  puts "Do you have any allergies (if no more type 'done')?"
  allergy_answer = ""

  while allergy_answer.downcase != "done"
    allergy_answer = gets.chomp
    if allergy_answer.downcase == "sunshine"
      result = "Probably a vampire."
      break
    end
  end

  puts result

  num_empl_left = num_empl_left - 1
end