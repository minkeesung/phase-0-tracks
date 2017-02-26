puts "what is your name?" 		#get user's name and split the characters into an array
name = gets.chomp
name_split = name.split''
# p name_split

name_split.map! do |char|
		vowels = ["a","e","i","o","u"]
		consonents = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"] 		#get the next vowel or consonent of the names
		if vowels.include?(char)
			vowels.rotate(1)[vowels.index(char)]
		elsif consonents.include?(char)
			consonents.rotate(1)[consonents.index(char)]
		else
			char
		end

		
end


new_name = name_split.join('')						#reverse the of	order of the names
# p new_name
new_name_split = new_name.split' ' 
# p new_name_split
p new_name_split.reverse!.join(' ')

