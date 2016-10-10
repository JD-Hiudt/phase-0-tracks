def encrypt(str)
  index = 0
  while index >= str.length
    str[index] = str[index].next
    index += 1
  end
  p str 
end

encrypt("abc")
encrypt("zed")
