# module Shout
# 	def self.yell_angrily(words)
#     	words + "!!!" + " :("
#   	end

#   	def self.yelling_happily(words)
#   		words +"!!!"  + "  :)"
#   	end
# end

# p Shout.yelling_happily("I am happy")
# p Shout.yell_angrily("I am angry")

module Shout
	def yell_angrily(words)
    	words + "!!!" + " :("
  	end

  	def yelling_happily(words)
  		words +"!!!"  + "  :)"
  	end
end

class Speak
	include Shout
end

class Spoken
	include Shout
end

person = Speak.new
p person.yell_angrily("I hate you")
p person.yelling_happily("I love you")

person_1 = Spoken.new
p person_1.yell_angrily("what the hell")
p person_1.yelling_happily("you make me happy")
