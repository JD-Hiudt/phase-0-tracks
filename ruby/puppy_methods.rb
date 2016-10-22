class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(woofs)
    woofs.times { |speak| puts "Woof" }
    woofs
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age_in_human_years)
    dog_age = age_in_human_years * 7
    puts "I'm #{age_in_human_years}, which is #{dog_age} in dog years"
    dog_age
  end

  def high_five
    puts "My paw gave your hand a high five"
  end

  def initialize
    puts "Initializing new puppy instance ..."
  end 
end

penny = Puppy.new

penny.fetch("ball")

penny.speak(3)

penny.roll_over

penny.dog_years(4)

penny.high_five


class FootballGame

  def pass(quarterback,receiver,yards)
    puts "#{quarterback} finds an open #{receiver} for a #{yards} yard play!"
  end

  def run(quarterback,running_back,yards)
    puts "#{quarterback} hands the ball off to #{running_back}, who takes it for a #{yards} yard gain!"
  end

  def initialize
    puts "Are you ready for some football?!"
  end 

  football_game = []

  i = 0
  until i >= 50
    plays = FootballGame.new
    i += 1
    football_game.push(plays)
  end


  football_game.each do
    FootballGame.new
    plays.pass('Andy Dalton','AJ Green',50)
    plays.run('Andy Dalton','Jeremy Hill',10)
  end

end



