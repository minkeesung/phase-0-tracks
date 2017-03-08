class Dancer

	attr_reader :name
	attr_accessor :age
	attr_reader :card

	def initialize(name, age)
    	@name = name
    	@age = age
    	@card = []
 	end

 	def pirouette
 		p "*twirls*"
 	end

 	def bow
 		p "*bows*"
 	end

 	def queue_dance_with(new_dancer)
 		
 		@card << new_dancer
 	end

 	def begin_next_dance
 		p "now dancing with #{@card[0]}"
 		@card.shift
 	end
 end	

 newdancer = Dancer.new("misty", 23)
 p newdancer.name
 p newdancer.age = 44

 p newdancer.queue_dance_with("baba")
 p newdancer.queue_dance_with("grape")
 p newdancer.card
 newdancer.begin_next_dance
 p newdancer.card