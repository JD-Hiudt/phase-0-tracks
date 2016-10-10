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

encrypt("abc")
encrypt("zed")
