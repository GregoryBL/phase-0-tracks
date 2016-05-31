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
  elsif type == "string" 
    return answer.to_s
  elsif type == "boolean"
    while true # this will break when we hit a return
      if answer =~ (/(true|t|yes|y)$/i) # regex for true
        return true
      elsif answer =~(/false|f|no|n)$/i) # regex for false
        return false
      else # nonsensical answer
        p "Please answer true or false."
        answer = gets.chomp
      end
    end
  elsif type == "integer"
    return answer.to_i
  elsif type == "float"
    return answer.to_f
  else
    p "Invalid type given"
    return nil
  end
end

