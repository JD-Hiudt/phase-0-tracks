puts "What's your name?"
userName = gets.chomp
  if (userName == 'Drake Cula' || userName == 'Tu Fang')
    vampire = true
  else 
    vampire = false
  end

puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birthYear = gets.chomp.to_i
  if 2016 - age = birthYear
    ageRight = false
  else
    ageRight = true
  end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic = gets.chomp
  if garlic == 'yes'
    likesGarlic = true
  else
    likesGarlic = false
  end

puts "Would you like to enroll in the company’s health insurance?"
healthInsuranceSignUp = gets.chomp
  if healthInsuranceSignUp == 'yes'
    optIn = true
  else
    optIn = false
  end 

puts
if vampire == true
  puts "Definately a vampire."
elsif (ageRight = false && (likesGarlic = false || optIn = false))
  puts "Probably a vampire."
elsif (ageRight = true && (likesGarlic = true || optIn = true))
  puts "Probably not a vampire."
elsif (ageRight = false && likesGarlic = false && optIn = false)
  puts "Almost certainly a vampire."
else
  puts "Results inconclusive"
end

