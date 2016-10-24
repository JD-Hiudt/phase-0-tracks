#Game takes a word as an argument
  #Break word down into individual letters
#Game will ask for user input to guess the word(argument)
  #Establish count of user guesses
  #Break user word down into individual letters
  #Compare letters of user word to word(argument)
  #IF letters match, print letters to screen
  #ELSE print blank space (_)
#IF user word not equal to first work, repeat from line 3
#Until count of user guesses equals the length of the original word(argument), countinue to run game
#IF a word was already guessed, nothing is added to the count of guesses
#IF count limit reached, print lose message
#IF word guess before limit, print win message

class WordGame
  attr_accessor :user_guess
  attr_reader :is_over

  def initialize(word_to_be_guessed)
    @word = word_to_be_guessed
    @number_of_guesses = 0
    @is_over = false
    @user_guess = ""
    @letters_guessed = []
  end

  def game_word
    @word
  end

  def word_as_letters
    @word = @word.chars
  end

  def word_as_empty_spaces
    @word.gsub(/[A-z]/, "_")
  end

  def check_is_over
    @number_of_guesses += 1
      if @number_of_guesses >= @word.length
        @is_over = true
        puts "out of guesses"
      else
        false
      end
  end
end

puts "Welcome to the Word Guessing Game"
game = WordGame.new('joe')

while !game.is_over
  puts "Please guess a word, or letter"
  game.user_guess = gets.chomp
  if game.check_is_over == true
    break
  end
end



