
#hamster sorter


puts "What is the hamsters name?"
hamster = gets.chomp.to_s.capitalize

while true
  puts "Volume level from 1 to 10?"
  volume = gets.chomp.to_f
  if (volume >=1 && volume <=10)
    break
  else
    puts "Please give a number 1-10"
  end
end

while true
  puts "What is the hamsters fur color? (brown, black, white, or other"
  fur = gets.chomp.to_s.downcase
  if (fur == 'brown' || fur == 'black' || fur == 'white' || fur == 'other' ) 
    break
  else
    puts "please answer: brown, black, white, or other"
  end
end

while true
  puts "Is the Hamster adoptable?"
  adoptable = gets.chomp.downcase
  if (adoptable == 'yes' || adoptable == 'no')
    if adoptable == 'yes'
      answer = true
    else
      answer = false
    end
    break
  else
    puts 'please answer yes or no'
  end
end


puts "What is the estimated age?"
age = gets.chomp.to_s
  if age == ""
      age = nil
  end

puts
puts "Hamster Database Entry"
puts "name: #{hamster}" 
puts "volume: #{volume}" 
puts "fur: #{fur}"
puts "adoptable: #{adoptable}"
puts "age: #{age}"

