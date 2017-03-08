class WordGame
  attr_reader :guess_count
  attr_reader :is_over
  attr_writer :is_over
  attr_writer :guess_count
  
  
  def initialize
    @word = 
    @guess_count = 0
    @is_over = false
  end
  
  def word_equal(word)
    @guess_count += 1
    if @word == word
      @is_over = true
    else
      @is_over = false
    end
    
  end
  
  def set_word=(str)
    @word = str
  end
  
end
