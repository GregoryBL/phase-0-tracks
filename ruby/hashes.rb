# Create hash
# For each question:
#   Ask the question
#   get an answer
#   convert it to the correct type
#   store it in the hash with the correct key (symbol)
# Print the hash
# Ask if they would like to update any values
# Ask the question
# get an answer
# convert it to the correct type
# store it in the hash with the correct key (symbol)
# print the hash
# exit

def process_answer(questionString, type)
  puts questionString
  answer = gets.chomp

  if answer == "" # no answer given
    return nil
  elsif type == :string 
    return answer.to_s
  elsif type == :boolean
    while true # this will break when we hit a return
      if (answer =~ (/(true|t|yes|y)$/i)) == 0 # regex for true
        return true
      elsif (answer =~ (/(false|f|no|n)$/i)) == 0 # regex for false
        return false
      else # nonsensical answer
        p "Please answer yes or no."
        answer = gets.chomp
      end
    end
  elsif type == :integer
    return answer.to_i
  elsif type == :float
    return answer.delete("$").delete(",").to_f
  else
    p "Invalid type given"
    return nil
  end
end

def designer_questionairre
  hash = Hash.new
  
  type_hash = {client_name: :string, client_age: :integer, number_children: :integer, client_theme: :string, sandproof: :boolean, client_budget: :float}

  hash[:client_name] = process_answer("What is the client's name?", type_hash[:client_name])
  hash[:client_age] = process_answer("What is the client's age?", type_hash[:client_age])
  hash[:number_children] = process_answer("How many children does the client have?", type_hash[:number_children])
  hash[:client_theme] = process_answer("What kind of theme does the client want for the decor?", type_hash[:client_theme])
  hash[:sandproof] = process_answer("Does the interior need to be sandproof?", type_hash[:sandproof])
  hash[:client_budget] = process_answer("What is the client's budget?", type_hash[:client_budget])

  puts hash

  puts "Which would you like to edit (or type none)?"
  which_to_edit = gets.chomp
  if which_to_edit != "none"
    
    hash[which_to_edit.to_sym] = process_answer("New value for #{which_to_edit}?", type_hash[which_to_edit.to_sym])
  end
  
  puts hash

  return hash
end

designer_questionairre

