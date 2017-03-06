include Math 

class Santa
    	
  	attr_reader :name
  	attr_reader :reindeer_ranking
  	attr_accessor :gender
  	attr_reader :ethnicity
  	attr_accessor :age
  
  def initialize(gender, ethnicity)
	 puts "Initializing Santa instance ..."
	 @gender = gender
	 @ethnicity = ethnicity
	 @age = rand(151)
	 @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

	 end
  
	def speak
		puts "HO HO HO, happpyy holidays!!!"
	end

	def eat_milk_and_cookies(n)
	  puts "that was a good #{n}"
	end

	def celebrate_birthday
		@age = @age + 1
	end

	def get_mad_at=(reindeers)
			if reindeer_ranking.include?(reindeers)
				@reindeer_ranking[@reindeer_ranking.index(reindeers)], @reindeer_ranking[-1] = @reindeer_ranking[-1],@reindeer_ranking[@reindeer_ranking.index(reindeers)]
			end
	end

	
	
end

Bob = Santa.new("female","black")
Bob.speak
Bob.eat_milk_and_cookies("snickers")
p Bob.name 
p Bob.reindeer_ranking
p Bob.gender
p Bob.ethnicity
Bob.celebrate_birthday
p Bob.age
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

Bob.get_mad_at=("Dancer")
p Bob.reindeer_ranking

santas.each do |x|
  x.speak
  x.eat_milk_and_cookies(4)
end

gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese", "prefer not to say", "unicorn", "N/A"]

santa = []

5.times{santa << Santa.new(gender.sample,ethnicity.sample)}


p santa