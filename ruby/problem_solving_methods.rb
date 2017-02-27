def search_array(arr,int)

	count = 0
	
	if arr.include?(int)
			
	  	while count < arr.length
	  		if int != arr[count]
	  			count += 1
	  		else 
	  		  p count
	  		  count += 1
	  		  
	  	  	end
	  	end
  	else
    	p nil
  	end


end

a = [4,25,36,26,29]

search_array(a, 29)

def fib(x)
	array = [0,1]
	count = 0 
	

	while count < (x-2)
		sum = array[count+1] + array[count]
		array << sum
		count += 1
	end

	p array
	

end

if fib(100)[-1] == 218922995834555169026
	puts "they are equal"
else
	puts "they are not"
end


# for i = 1 to length(A)                                      #This is pseudocode from wikipedia
#     x = A[i]
#     j = i - 1
#     while j >= 0 and A[j] > x
#         A[j+1] = A[j]
#         j = j - 1
#     end 
#     A[j+1] = x[3]
#  end 

def insertion_sort(array)												#This is not my code.  I do not understand this code.  I tried very hard to understand it but could not.
    final = [array[0]]
    array.delete_at(0)
    # main code
    for i in array
        final_index = 0
        while final_index < final.length
            if i <= final[final_index]
                final.insert(final_index,i)
                break
            elsif final_index == final.length-1
                final.insert(final_index+1,i)
                break
            end
            final_index+=1
        end
    end
    # output
    final
end
array = [17, 5, 3, 4, 6, 3]
puts insertion_sort(array)