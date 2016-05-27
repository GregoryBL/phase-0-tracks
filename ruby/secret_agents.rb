# Pseudocode Encrypt

# For each letter in the input string (by length):
#   Find it by its index
    # If the letter is a space, leave it alone
    # Otherwise
#     Use the next function to get the next letter in the alphabet
#     put that value back into the original string
# After done for all of them, return the string

def encrypt(string1)
  length = string1.length
  counter = 0

  while counter < length

    if string1[counter] == " "
      # do nothing
    elsif string1[counter] == "z" # "z".next -> "aa" but we want "a", so we added this case
      string1[counter] = "a"
    else
      string1[counter] = string1[counter].next
    end

    counter = counter + 1
  end

  string1
end

# puts encrypt("abc")
# puts encrypt("gregory bernsleone")
# puts encrypt("")

# Pseudocode Decrypt

# For each letter in the input string:
#   Find it by its index
   # Use the letter with the string "abcdefghijklmnopqrstuvwxyz" to find out the number of the letter in the alphabet
   # Get the letter before that by subtracting 1 from the index in the previous step
#   put that letter back into the original string
# After done for all letters in the input string, return the string

def previous(letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  current_letter_index = alphabet.index(letter)
  # puts current_letter_index
  new_letter_index = current_letter_index - 1
  # puts new_letter_index
  alphabet[new_letter_index]
end

def decrypt(string1)
  length = string1.length
  counter = 0

  while counter < length
    if string1[counter] == " "
      # do nothing
    else
      string1[counter] = previous(string1[counter])
    end
    counter = counter + 1
  end
  string1
end

# puts encrypt("abc")
# puts encrypt("zed")

# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish")) # "swordfish" is encrypted (increasing each letter by one) and then decrypted (decreasing each letter by one), so it returns the same thing.

# Pseudocode for interface

# Ask for encrypt or decrypt
# Ask for password

# If encrypt, do encrypt(password)
# If decrypt, do decrypt(password)

# Print result
# Exit

puts "Would you like to encrypt or decrypt a password?"
enc_dec = gets.chomp
puts "What is your password?"
password = gets.chomp

if enc_dec == "encrypt"
  puts "Encrypted password: #{encrypt(password)}"
elsif enc_dec == "decrypt"
  puts "Decrypted password: #{decrypt(password)}"
else
  puts "Jolly good joke, sir."
end



