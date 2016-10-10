def encrypt(str)
  index = 0
  encryptString = ""
  while index < str.length
    if str[index] == "z"
      encryptString += "a"
    else
      encryptString += str[index].next
    end
    index += 1
  end
  return encryptString
end 

p encrypt("abc")
p encrypt("zed")
p encrypt("dez")


=begin

def decrypt(str)
  index = 0
  key = "abcdefghijklmnopqrstuvwxyz"
  key.reverse!
  puts key
  while index < str.length
    if key[index] = str[index]
      str[index] = str[index].next
    end
    index += 1
  end
  p str
end 

decrypt("bcd") #should return "abc"
decrypt("afe") #should return "zed"

=end