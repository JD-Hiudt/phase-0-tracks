class Santa

  attr_reader :age, :ethnicity 
  attr_accessor :gender


  def initialize(gender,ethnicity,age)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(0..140)
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type} cookie!" 
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking[-1] = reindeer_name
  end

end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Asian", "prefer not to say", "Middle Eastern", "N/A", "Russian", "Eastern European"]

100.times do 
  gender = genders.sample
  ethnicity = ethnicities.sample
  santas << Santa.new(gender, ethnicity, @age)
end

count = 1
santas.each do |santa|
  puts "Santa " + count.to_s
  puts "Gender: " + santa.gender.to_s
  puts "Ethnicity: " + santa.ethnicity.to_s
  puts "Age: " + santa.age.to_s
  puts ""
  count += 1
end
