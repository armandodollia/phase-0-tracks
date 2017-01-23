class Word_guesser
  attr_reader :attempts, :word_length, :attempts, :guessed_letters_array

  def initialize(word)
    @attempts = 0
    @word = word
    @word_array = @word.split('')
    @guessed_letter = ""
    @word_length = word.length
    @guessed_letters_array = []
  end

  def matching_letters (guessed_letter)
      @word_array.each do |letter|
        if letter == guessed_letter
          @guessed_letters_array << guessed_letter
        else
          @guessed_letters_array << "_"
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