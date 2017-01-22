require_relative 'word_guesser'

describe Word_guesser do
  let(:word_guesser) { Word_guesser.new("potato") }

  it "converts a string to an array" do
    word_guesser.array_convert(word_guesser.word).to eq ['p', 'o', 't', 'a', 't', 'o']
  end

  it "checks if guessed word matched original word" do
    word_guesser.word_checker("tomato").to eq false
  end

  it "returns a string with guessed letters" do
    word_guesser.word_checker("tomato")
    word_guesser.matching_letters.to eq "_o_ato"
  end
end