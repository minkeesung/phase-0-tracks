require_relative 'classguessword'

puts "user 1: type in a word that you want user 2 to guess"

game = WordGame.new
setted_word = gets.chomp
game.set_word = setted_word
num_guesses = setted_word.length
count = 0 
arr = []
arr_word = setted_word.split(//)
guess_word = []



guess_word.fill("-", guess_word.size, setted_word.length )
p guess_word

while (count < num_guesses && !game.is_over)
  
    puts "please guess a word to match"
    guess = gets.chomp
    if guess.length == 1 && arr_word.include?(guess)
      index = arr_word.index(guess)
      guess_word[index] = guess
      p guess_word
      count += 1
      game.guess_count += 1
        if guess_word == arr_word
          game.is_over = true
        end
    elsif arr.include?(guess)
      puts "Nope! Try Again"
      
    elsif !game.word_equal(guess)
      puts "Nope! Try Again"
      count += 1
      arr << guess
    end
  end

if game.is_over == true
  puts "You won in #{game.guess_count} guesses!"
else
  puts "you lose!"
end