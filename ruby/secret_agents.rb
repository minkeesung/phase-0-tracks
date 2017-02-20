def encrypt(secret_password)	
	index = 0
  
  
	while index < secret_password.length
	  if secret_password[index].eql?("z")
	    secret_password[index]="a"
	    index += 1
	  else
  		secret_password[index] = secret_password[index].next
  		index += 1
  	end
	end
	puts secret_password
end



def decrypt(secret_password)
  index=0 
  word = "abcdefghijklmnopqrstuvwxyz"
  
  while index<secret_password.length
    secret_password[index] = word[(word.index(secret_password[index])-1)]
    index += 1
  end
  puts secret_password
end

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
encrypt("swordfish")
#decrypt(encrypt("swordfish")) #this does not work for me.  It says undefined method 'length' for nil

puts "would you like to encrypt or decrypt a password"
wants = gets.chomp
if wants.eql?("encrypt")
  puts "what is your password?"
  password = gets.chomp
  encrypt(password)
elsif wants.eql?("decrypt")
  puts "what is your password"
  password = gets.chomp
  decrypt(password)
else
  puts "please type encrypt or decrypt"
end