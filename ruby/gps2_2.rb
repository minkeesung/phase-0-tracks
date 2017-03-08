def create_list
	puts "make a list of items that you would like to create" #make code that gets input from user and splits the list into array  
	list_items = gets.chomp										#create a hash based on the array, using array as the key
	list_array = list_items.split(" ")
	@list = Hash[list_array.map {|x| [x,1]}]
end

p create_list 


def add_to_list(list,item_name,quantity = nil)				#create method that adds item to hash
	list[item_name] = quantity
end


p add_to_list(@list, "lemonade", 2)
p add_to_list(@list, "tomatoes", 3)
p add_to_list(@list, "onions", 1)
p add_to_list(@list, "ice cream", 4)

p @list

def remove_list(list, item_name)			#create method that deletes item using delete method
	list.delete(item_name)
end

p remove_list(@list, "lemonade")

p @list

def update_quantity(list,item_name,quantity = nil)			#create method that updates the quantity of a certain item
	list[item_name] = quantity
end

update_quantity(@list, "onions", 5)

p @list

require 'pp'
def make_pretty(list)			#create method that prints the hash in a pretty way
	pp list
end

make_pretty(@list)