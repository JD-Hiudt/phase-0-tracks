#Create a method that

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



