#need method that asks for persons first name, last name 
#convert first name/last name into alias'
#apply conditions
#IF letter is a vowel, return next vowel
#IF letter consonant, return next consonant
#IF letter/vowel capitalized in original name, return corresponding alias letters capitalized
#loops method until user stops
#stores user input and alias' in data structure 
#return data structure as descriptive string

$vowels = ['a', 'e', 'i', 'o', 'u']
$alias_names = {}

def get_alias_name
  full_name = get_full_name
  alias_name = convert_to_alias(full_name)
  $alias_names[full_name] = alias_name

  puts "Your new alias is: " + alias_name
  
  continue_program_and_or_return_data
end

def get_full_name
  puts "What's your first name?"
  first_name = gets.chomp

  puts "What's your last name?"
  last_name = gets.chomp

  full_name = first_name + " " + last_name
  return full_name
end

def continue_program_and_or_return_data
  puts "Would you like to continue 'yes' or 'no'?"
  response = gets.chomp
  if response == 'yes'
    get_alias_name
  else
    print_data
  end
end

def change_vowel(letter)
  letter_index = $vowels.index(letter.downcase) 
  next_vowel = $vowels[letter_index+1]
  if next_vowel == nil
    next_vowel = 'a'
  elsif is_vowel_capitalized?(letter)
    next_vowel = next_vowel.upcase
  end
  return next_vowel
end

def next_letter(letter)
  if letter == 'z'
    letter_after = 'a'
  elsif letter == ' '
    letter_after = letter
  else
    letter_after = letter.next
  end  
  if is_a_vowel?(letter_after)
    letter_after = letter_after.next
  end
  return letter_after
end

def is_a_vowel?(letter)
  return $vowels.include?(letter.downcase)
end

def is_vowel_capitalized?(letter)
  return letter == letter.upcase
end

def convert_to_alias(name_to_be_converted) 
  convert_name = name_to_be_converted.chars.map do |letter|
    if is_a_vowel?(letter)
      letter = change_vowel(letter)
    else
      letter = next_letter(letter)
    end
  end
  return convert_name.join('').split.reverse.join(' ')
end

def print_data
  $alias_names.each do |real_name, fake_name|
    puts "#{real_name}'s alias is #{fake_name}"
  end
end

get_alias_name

