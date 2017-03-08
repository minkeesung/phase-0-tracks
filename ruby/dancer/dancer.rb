class Dancer

	attr_reader :name
	attr_accessor :age

	def initialize(name, age)
    	@name = name
    	@age = age
 	end

 	def pirouette
 		p "*twirls*"
 	end

 	def bow
 		p "*bows*"
 	end
 end	

 newdancer = Dancer.new("misty", 23)
 p newdancer.name
 p newdancer.age = 44

 