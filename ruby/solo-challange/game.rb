#Game takes a word as an argument
  #Break word down into individual letters
#Game will ask for user input to guess a letter
  #Establish count of user guesses
  #Break user word down into individual letters
  #Compare letters of user word to word(argument)
  #IF letters match, print letters to screen
  #ELSE print blank space (_)
#IF user word not equal to first work, repeat from line 3
#Until count of user guesses equals the length of the original word(argument), countinue to run game
#IF a letter was already guessed, nothing is added to the count of guesses
#IF count limit reached, print lose message
#IF word guess before limit, print win message

#LOGIC

class HangmanGame

  attr_reader :game_word, :is_over
  attr_accessor :guessed_word

  def initialize(word_to_be_guessed)
    @game_word = word_to_be_guessed
    @guessed_word = Array.new(word_to_be_guessed.length, " _ ") 
    @guess_count = word_to_be_guessed.length
    @is_over = false
    @guessed_letters = []
  end

  def guess_letter(users_guess)
    break_down_word(users_guess)
    puts progress_of_word
    is_solved?
    already_guessed(users_guess)
    check_guesses
  end

  def break_down_word(users_guess)
    game_word_as_arr = @game_word.chars
    counter = 0
    while counter < game_word_as_arr.length
      if users_guess.include?(game_word_as_arr.join('')[counter])
        @guessed_word[counter] = game_word_as_arr[counter]
      end
      counter += 1
    end
  end

  def progress_of_word
    return @guessed_word.join('')
  end

  def already_guessed(users_guess)
    if !@guessed_letters.include?(users_guess)
      @guessed_letters.push(users_guess)
      @guess_count -= 1
      puts "#{@guess_count} guesses remaining"
    else
      puts "...letter(s) already guessed"
    end
  end

  def is_solved?
    if @game_word == @guessed_word.join('')
      @is_over = true
      puts "Congratulations! The word was #{@game_word}! You're a genius!"
    end
  end

  def check_guesses
    if @guess_count == 0
      @is_over = true
      puts "you ran out of guesses..."
      puts "Game Over"
    end
  end
end


#USER INTERFACE
puts "Welcome to Hangman!"
hangman = HangmanGame.new('elephant')

while !hangman.is_over
  puts "Guess a word or letter"
  guess = gets.chomp
  hangman.guess_letter(guess)
end















