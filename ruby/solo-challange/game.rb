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

#LOGIC

class HangmanGame
  attr_reader :guessed_word, :game_word, :is_over

  def initialize(word_to_be_guessed)
    @game_word = word_to_be_guessed
    @guessed_word = Array.new(word_to_be_guessed.length, "_") 
    @guess_count = word_to_be_guessed.length * 2
    @is_over = false
  end

  def guess_letter(users_guess)
    game_word_as_arr = @game_word.chars
    counter = 0
    while counter < game_word_as_arr.length
      if users_guess == game_word_as_arr[counter]
        @guessed_word[counter] = game_word_as_arr[counter]
      end
      counter += 1
    end
    @guessed_word.join('')
    is_solved?
    @guess_count -= 1
    check_guesses
  end

  def is_solved?
    if @game_word == @guessed_word.join('')
      @is_over = true
      puts "congrats"
    end
  end

  def check_guesses
    if @guess_count == 0
      @is_over = true
      puts "you ran out of guesses"
    end
  end

end


#USER INTERFACE
puts "Welcome to Hangman!"
hangman = HangmanGame.new('elephant')

while !hangman.is_over
  puts "Guess a letter"
  guess = gets.chomp
  hangman.guess_letter(guess)
end

















=begin
class WordGame
  attr_accessor :user_guess, :user_guess_as_letters, :letters_guessed
  attr_reader :is_over

  def initialize(word_to_be_guessed)
    @word = word_to_be_guessed
    @word_as_letters = word_to_be_guessed.chars
    @user_guess = ""
    @letters_guessed = []
    @number_of_guesses = 0
    @is_over = false
  end

  def game_word
    @word
  end

  def word_as_array
    @word_as_letters
  end

  def user_word_guess
    @user_guess = gets.chomp
  end

  def user_guess_as_array
    @user_guess_as_letters = @user_guess.chars
  end

  def arr_of_guessed_letters
    @letters_guessed << @user_guess_as_letters
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
  game.letters_guessed << game.user_guess
  if game.check_is_over == true
    break
  end
end
=end




