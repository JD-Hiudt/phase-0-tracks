=begin

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

=end

module Shout

  def shout_response(string)
    puts "#{string}!!!" 
  end

  def reaction(emoji_as_string)
    puts emoji_as_string
  end

end

class Angry 
  include Shout
end

class Happy
  include Shout
end

mad = Angry.new
mad.shout_response("I'm mad")
mad.reaction(' :( ')

excited = Happy.new
excited.shout_response("I'm happy")
excited.reaction(' :) ')

