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

 	def leave							#This method indicates when it is time for the dancers to leave.  
 		p "it is time to leave"
 	end
 end	

