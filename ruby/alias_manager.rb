# Pseudocode alias method

# split the name by space
# reverse the array
# join the array
# split the array by ''
# map! the array so that if the lower cased version of the letter is a vowel it goes to the next vowel (wrapping with mod) or if it's a consonant it goes to the next consonant (wrapping with mod) otherwise returns the same character
# adjust so that capital letters are back capital
# join the array (and implicitly return)

def alias_method(name)
  reversed_name = name.split(' ').reverse.join(' ') # now "last first"
  
  vowels = "aeiou".split('')
  consonants = "bcdfghjklmnpqrstvwxyz".split('')
  
  swap_letters_array = reversed_name.split('').map do |letter|
    lett = letter.downcase # need to keep letter for putting back upper case
    if vowels.include?(lett)
      return_letter = vowels[vowels.index(lett)+1 % vowels.length]
    elsif consonants.include?(lett)
      return_letter = consonants[consonants.index(lett)+1 % consonants.length]
    else # handles all other characters
      return_letter = letter
    end
    # If first or last name has more than one capital, String#capitalize is not enough
    if letter < "a" # capitals are less than the smallest lower case
      return_letter = return_letter.upcase # can't use upcase! here because every of that letter will get capitlized for some reason
    end
    return_letter # this is necessary because we had to capitalize
  end
  
  swap_letters_array.join('')
end

# p alias_method("Gregory Berns-Leone")
# p alias_method("Felicia Torres") == "Vussit Gimodoe" # true if test case worked

def interface
  while true
    puts "What name would you like to make into an alias?"
    answer = gets.chomp
    if answer.downcase == "quit"
      break
    else
      puts alias_method(answer)
    end
  end
end

interface