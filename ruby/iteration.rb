#my own method block
def addExclamation
  puts "What's your name"
  name = gets.chomp
  puts "Give me a sentence, #{name}..."
  sentence = gets.chomp
  p sentence += "!"
  p sentence
  yield(name)
end

addExclamation { |name| p "Now that's what I'm talking about, #{name}!!!" }


#.each array
grocery_list = ["bread", "egg", "milk", "cheese"]

puts "original list"
p grocery_list

# iterate through the array with .each
grocery_list.each do |item|
  puts "#{item}, check!"
end

puts "after .each"
p grocery_list

#.each hash
harry_potter_cast = {
  "Harry Potter" => "Daniel Radcliffe",
  "Ron Weasley" => "Rupert Grint",
  "Hermione Granger" => "Emma Watson"
}

puts "original cast"
p harry_potter_cast

# iterate through the hash with .each
harry_potter_cast.each do |character, actor|
  puts "The role of #{character} was played by #{actor}."
end

puts "after .each"
p harry_potter_cast

#.map(!) array
grocery_list = ["bread", "eggs", "milk", "cheese"]

puts "original list"
p grocery_list

# iterate through the array with .map
grocery_list.map! do |item|
  puts "be more specific"
  puts item
  specific = gets.chomp + " "
  specific << item
end

puts "after .map"
p grocery_list