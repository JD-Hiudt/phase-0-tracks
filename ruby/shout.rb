module Shout
  # we'll put some methods here soon, but this code is fine for now!
  def self.yell_angrily(words)
    words + "!!!" + " :("
    puts words
  end

  def self.yell_happily(words)
    words + "!!!" + " :)"
    puts words
  end

end

Shout.yell_angrily("No")
Shout.yell_happily("Yes")