# Pseudocode alias method

# split the name by space
# reverse the array
# join the array
# split the array by ''
# map! the array so that if the letter is a vowel it goes to the next vowel or if it's a consonant it goes to the next consonant'
# join the array (and implicitly return)

def alias_method(name)
  name = name.downcase
  reversed_name = name.split(' ').reverse.join(' ')
  vowels = "aeiou".split('')
  consonants = "bcdfghjklmnpqrstvwxyz".split('')
  swap_letters_name = reversed_name.split('').map do |letter|
    if vowels.include?(letter)
      vowels[vowels.index(letter)+1 % vowels.length]
    elsif consonants.include?(letter)
      consonants[consonants.index(letter)+1 % consonants.length]
    else
      letter
    end
  end
  swap_letters_name.join('')
end

p alias_method("Greg Berns-Leone")