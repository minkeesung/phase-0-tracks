numbers = ["1","2","3","4","5"]

hollywood = {"tom cruise" => "top gun", "brad pitt" => "ocean's eleven", "anthony hopkins" => "silence of the lambs"}

numbers.each do |number|
	puts number
end

numbers.map! do |number|
	number.insert(1,"0")
end

p numbers

hollywood.each do |name, movie|
	puts "#{name} was in the movie #{movie}"
end	


test_scores = [45,477,35,345,67]

p test_scores.delete_if {|score|score<50} 



p test_scores 



ary = [4,53,139,2,45,30,27]



p ary.select {|x| x>20} 


p ary.keep_if {|x| x>40}

hash = {5 => "five", 10 => "ten", 13 => "thirteen", 20 => "twenty"}

p hash.delete_if{|key,value| key>=7}

p hash.select!{|k,v| k>=12}

p hash.keep_if{|k,v| k>=17}