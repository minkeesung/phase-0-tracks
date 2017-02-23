user_info={}  #create an empty hash


puts "what is your name?"         	#ask user for name
user_info[:name] = gets.chomp		#get input from user

puts "how many children do you have?"				#ask user for number of children
user_info[:number_of_children] = gets.chomp.to_i	#get input from user

puts "what decor theme would you like?"   	#ask what theme they would like
user_info[:theme] = gets.chomp				#get input from user

puts "do you like furniture, answer yes of no"  #ask for a true of false value on whether they like furniture
input = gets.chomp								# get user input
if input == "yes"		
	user_info[:furniture] = true
else
	user_info[:furniture] = false
end
	
					

p user_info #print the hash

puts "would you like to update any of this information? which information would you like to update?" #ask if they want to update the information
answer = gets.chomp 

if answer.eql?("name")															#this section of code updates the hash if the user wants to
  puts "what name would you like to update to?"
	user_info[:name] = gets.chomp
elsif answer.eql?("children")
  puts "how many children would you like to update to?"
	user_info[:number_of_children] = get.chomp.to_i
elsif answer.eql?("theme")
  puts "what theme would you like to update to?"
	user_info[:theme]  = gets.chomp
elsif answer.eql?("furniture")
  puts "would you like to change your answer to yes or no?"
	input = gets.chomp								# get user input
		if input == "yes"		
			user_info[:furniture] = true
		else
			user_info[:furniture] = false
		end
	
else answer.eql?("none")
	puts "ok"	
end
p user_info
