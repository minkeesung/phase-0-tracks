puts "what is your hamster's name?"
hamstername = gets.chomp 
puts "what is the volume level of your hamster on a level from 1 to 10?"
volume_of_hamster = gets.chomp.to_i
puts "what is the fur color of your hamster?"
color_of_hamster = gets.chomp
puts "is the hamster a good or bad candidate for adoption?"
good_candidate = gets.chomp
puts "what is the estimated age of the hamster?"
age_hamster = gets.chomp.to_i

puts "the name of the hamster is #{hamstername}"
puts "the volume level of the hamster is #{volume_of_hamster} out of 10"
puts "the fur color of the hamster is #{color_of_hamster} "
puts "the hamster is a #{good_candidate} for adoption"
puts "the hamster is #{age_hamster} years old"