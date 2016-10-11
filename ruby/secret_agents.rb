#Create a method that gives an string.  
#For each letter in that string, the following (or previous) letter is returned
#Repeat until entire string condition is met
#Return string

def encrypt(str)
  i = 0
  encryptString = ""
  while i < str.length
    encryptString += letterAfter(str[i])
    i += 1
  end
  return encryptString
end 

def letterAfter(letter)
  if letter == "z"
    nextLetter = "a"
  else
    nextLetter = letter.next
  end  
  return nextLetter
end

p encrypt("abc")
p encrypt("zed")


def decrypt(str)
  i = 0
  decryptString = ""
  while i < str.length
    decryptString += previousLetter(str[i])
    i += 1
  end
    return decryptString
end

def previousLetter(letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz".chars
  letter = alphabet[alphabet.index(letter)-1]
  return letter
end

p decrypt("bcd")
p decrypt("afe")

p decrypt(encrypt("swordfish")) 


#ask user if they want to encrypt or decrypt
#add condition if answer outside those options to repeat ask
#get password from user
#based on if they select encrypt or decrypt, run appropriate method with the password as the argument

def crypticPassword
  puts "Do you want to encrypt or decrypt a password"
  choice = gets.chomp.downcase 
  if isValidResponse?(choice)
    puts "What is the password?"
    password = gets.chomp 
    crypticResponse(choice,password)
  else
    invalidResponse
  end
end

def isValidResponse?(choice)
  return choice == "encrypt" || choice == "decrypt"
end

def invalidResponse
  puts "please enter either 'encrypt' or 'decrypt'"
  crypticPassword
end

def crypticResponse(choice,password)
  if choice == "encrypt"
    return encrypt(password)
  else 
    return decrypt(password) 
  end
end

p crypticPassword










