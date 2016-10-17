
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

#A method that iterates through the items, deleting any that meet a certain condition 
grades = ["A", "B", "C", "D", "F"]
p grades
grades.delete_if {|grade| grade > "C" }
p grades

grades = { "A+" => 100, "A" => 95, "A-" => 90, "B+" => 89, "B" => 85, "B-" => 80, "C+" => 79, "C" => 75, "C-" => 70 }
p grades
grades.delete_if { |grade, score|  score < 90} 
p grades

#A method that filters a data structure for only items that do satisfy a certain condition
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers
p numbers.take_while { |i| i < 5 }

numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => '6', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten' }
p numbers
p numbers.take_while { |i, spelled| i < 5 }

#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p numbers
p numbers.select { |i| i < 5 }

numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 6 => '6', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten' }
p numbers
p numbers.select { |i, spelled| i < 5 }

#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
words = ["cat", "dog", "horse", "rabbit", "hamster", "turtle", ""]
