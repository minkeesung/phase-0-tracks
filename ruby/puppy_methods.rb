class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def woof(n)
  	count = 0
  	while count < n
  		puts "woof"
  		count += 1
  	end
  end

  def roll_over()
  	puts "roll over"
  end

  def dog_years(n)
  	p n/5
  end

  def sit()
  	puts "dog is sitting"
  end

  def initialize()
  	puts "Initializing new puppy instance ..."
  end
end

class Car
  def turn_on()
    puts "car is now running"
  end
  
  def reverse()
    puts "car is now put in reverse"
  end
  
  def initialize()
  	puts "Initializing new car instance ..."
  end
end

kiki = Puppy.new
kiki.fetch("ball")
kiki.woof(5)
kiki.roll_over
kiki.dog_years(15)
kiki.sit



count = 0 
arr = []
while count < 50
  newcar = Car.new
  count += 1
  arr << newcar
end

arr.each do |x|
  x.turn_on
  x.reverse
end
# initialize runs in the beginning of all the other methods
# when initalize is misspelled the message does not run