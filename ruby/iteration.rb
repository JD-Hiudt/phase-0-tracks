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

