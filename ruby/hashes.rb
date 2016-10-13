#Prompt use with questions
#gather user input per question
#user input with equal details about client and stored

clientInformation = {
  name: "",
  age: nil,
  num_of_children: nil,
  decor_theme: decor = []
}

p clientInformation.keys
puts "Please fill in the following information about your client"
puts "name:"
clientInformation[:name] = gets.chomp
puts "age:"
clientInformation[:age] = gets.chomp.to_i
puts "number of children:"
clientInformation[:num_of_children] = gets.chomp.to_i
puts "preferred decor theme(s):"
while true
  puts "enter any decor themes the client is interested in (or type 'exit')"
  decorPreference = gets.chomp
  if decorPreference == 'exit'
    break
  else
    decor << decorPreference
  end
end
p clientInformation
puts "Before you submit, would you like to modify any of your client's information? ('yes' or 'no')"
changeInfo = gets.chomp
if changeInfo == 'no'
  p clientInformation
else  
  puts "What section?"
  changeSection = gets.chomp
  puts "What's the new value?"
  clientInformation[changeSection.to_sym] = gets.chomp
  p clientInformation
end