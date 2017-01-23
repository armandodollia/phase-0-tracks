class Word_guesser
  attr_reader :attempts, :word_length, :guessed_correctly, :word, :guessed_letters_array

  def initialize(word)
    @attempts = 0
    @word = word
    @word_array = @word.split('')
    @guessed_letter = ""
    @word_length = word.length
    @guessed_letters_array = []
    @guessed_correctly = false
  end

  # def array_convert(word)
  #   word.split('')
  # end

  # def underscore_array_creator(length)
  #   length.times {@guessed_letters_array << "_"}
  # end

  # def word_checker(guessed_word)
  #   if @word == guessed_word
  #     @guessed_correctly = true
  #     @attempts += 1
  #     @guessed_correctly
  #   else
  #     @guessed_correctly = false
  #     @attempts += 1
  #     @guessed_correctly
  #   end
  # end

  def matching_letters (guessed_letter)
      @word_array.each do |letter|
        if letter == guessed_letter
          @guessed_letters_array << guessed_letter
        else
          @guessed_letters_array << "_"
        end
      end
    @attempts += 1
    @guessed_letters_array
  end
end