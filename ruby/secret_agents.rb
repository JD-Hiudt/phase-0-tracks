def encrypt(str)
  index = 0
  while index < str.length
  str[index] = str[index].next
    if str[0..1] == "aa"
      str[0..1] = str[0...1]
    end 
  index += 1
  end
  p str
end 

encrypt("abc") #should return "bcd"
encrypt("zed") #should return "afe"

def decrypt(str)
  index = 0
  key = "abcdefghijklmnopqrstuvwxyz"
  key = key.reverse
  while index < str.length
    if str[0..3] = key[0..25]
      str[0..3] = key.next
    end
    index += 1
  end
  p str
end 

decrypt("bcd") #should return "abc"
decrypt("afe") #should return "zed"