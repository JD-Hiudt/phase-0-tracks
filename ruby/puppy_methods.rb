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




