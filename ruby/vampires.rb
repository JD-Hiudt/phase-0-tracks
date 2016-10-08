puts "How many employees would you like to survey?"
employees = gets.chomp.to_i
count = 0

while count <= employees
  puts "What's your name?"
  userName = gets.chomp

  puts "How old are you?"
  age = gets.chomp.to_i
  puts "What year were you born?"
  birthYear = gets.chomp.to_i

  while true
    puts "Our company cafeteria serves garlic bread. Should we order some for you?"
    garlic = gets.chomp.downcase
      if (garlic == "yes" || garlic == 'no')
        break
      else
        puts "Please answer either 'yes' or 'no'"
      end
  end

  while true
    puts "Would you like to enroll in the company’s health insurance?"
    healthIns = gets.chomp.downcase
      if (healthIns == "yes" || healthIns == 'no')
        break
      else
        puts "Please answer either 'yes' or 'no'"
      end
  end

  puts "Name any allergies you have"
  while true
    allergy = gets.chomp.downcase
    if (allergy == "sunshine" || allergy == 'done')
      break
    else
      puts "Please enter another allergy or type 'done' when finished"
    end
  end

  if (userName == "Drake Cula" || userName == "Tu Fang")
    puts "Definitely a vampire."
  elsif allergy == 'sunshine' 
    puts "Probably a vampire."
  elsif age == 2016 - birthYear && (garlic == 'yes' || healthIns == 'yes')
    puts "Probably not a vampire."  
  elsif age != 2016 - birthYear && garlic == "no" && healthIns == "no"
    puts "Almost certainly a vampire"
  elsif age != 2016 - birthYear && (garlic == 'no' || healthIns == 'no')
    puts "Probably a vampire."
  else
    puts "Results inconclusive"
  end

count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends!"





