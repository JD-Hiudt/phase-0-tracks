VOWELS = ['a', 'e', 'i', 'o', 'u']

def get_alias_name
  alias_names = {

  }

  puts "What's your first name?"
  first_name = gets.chomp

  puts "What's your last name?"
  last_name = gets.chomp

  full_name = first_name + " " + last_name
  reverse_full_name = last_name + " " + first_name
  alias_name = convert_to_alias(reverse_full_name)
  alias_names[full_name] = alias_name

  puts "Your new alias is: " + alias_name
  puts "Would you like to continue 'yes' or 'no'?"
  response = gets.chomp
  if response == 'yes'
    get_alias_name
  end

  print_data(alias_names)
  p alias_names["Jacob Hiudt"]
  p alias_names.key("Joafv Keduc")
end

def change_vowel(letter)
  letter_index = VOWELS.index(letter.downcase) 
  next_vowel = VOWELS[letter_index+1]
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
  return VOWELS.include?(letter.downcase)
end

def is_vowel_capitalized?(letter)
  return letter == letter.upcase
end

def convert_to_alias(convert_name) 
  name_to_be_converted = convert_name.chars.map do |letter|
    if is_a_vowel?(letter)
      letter = change_vowel(letter)
    else
      letter = next_letter(letter)
    end
  end
  return name_to_be_converted.join('')
end

def print_data(alias_hash)
  alias_hash.each do |real_name, fake_name|
    puts "#{real_name} alias is #{fake_name}"
  end
end

get_alias_name

