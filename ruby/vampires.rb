puts "how many employees are there?"
number_employees = gets.chomp.to_i
count = 0 

while count < number_employees

	


    
	puts "what is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "what year were you born?"
	year_born = gets.chomp.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? Answer yes or no"
	garlic = gets.chomp
	puts "Would you like to enroll in the company’s health insurance? Answer yes or no"
	health_insurance = gets.chomp
	puts "what allergies do you have?"
	allergies = gets.chomp  

	vampire_status = "results inconclusive"

	 
	if allergies.eql?("sunshine")
		vampire_status = "probably a vampire"
	else
		case 
		when age ==(2016-year_born)
			vampire_status = "probably not a vampire"
		end
		case
		when garlic.eql?("no") || health_insurance.eql?("no")
			vampire_status = "probably a vampire"
		end
		case
		when age != (2016-year_born) && garlic.eql?("no") && health_insurance.eql?("no")
			vampire_status = "almost certainly a vampire"
		end
		case
		when name.eql?("Drake Cula") || name.eql?("Tu Fang")
			vampire_status = "definitely a vampire"
		end
	end


	puts vampire_status
	count += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."