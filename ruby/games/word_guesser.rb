class Word_guesser
  attr_reader :attempts, :word_length

  def initialize(word)
    @attempts = 0
    @word = word
    @word_array = @word.split('')
    @guessed_letter = ""
    @word_length = word.length
    @guessed_letters_array = []
    @word_length.times {@guessed_letters_array << "_"}
  end

  def matching_letters (guessed_letter)
      @word_array.each_index do |index|
        if @word_array[index] == guessed_letter
          @guessed_letters_array[index] = guessed_letter
        # else
        #   @guessed_letters_array[index] = "_"
        end
      end

    @attempts += 1

    @guessed_letters_array.join
  end

  def done_guessing
    if @guessed_letters_array == @word_array
      true
    else
      false
    end
  end
end

#driver code


puts "Please enter a word to be guessed"
guess_game = Word_guesser.new(gets.chomp)


until guess_game.done_guessing || guess_game.attempts == guess_game.word_length
  attempts_left = guess_game.word_length - guess_game.attempts
  puts "Please enter a letter, you have #{attempts_left} attempts left"
  puts guess_game.matching_letters(gets.chomp)

  if guess_game.done_guessing && guess_game.attempts <= guess_game.word_length
    puts "Congratulations on figuring it out!"
  elsif !guess_game.done_guessing && guess_game.attempts >= guess_game.word_length
      puts "YOU FAIL!"
  end

end

