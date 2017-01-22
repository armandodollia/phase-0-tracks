require_relative 'word_guesser'

describe Word_guesser do
  let(:guesser) { Word_guesser.new("potato") }

  it "converts a string to an array" do
    expect(guesser.array_convert("potato")).to eq ["p", "o", "t", "a", "t", "o"]
  end

  it "checks if guessed word matched original word" do
    expect(guesser.word_checker("tomato")).to eq false
  end

  it "checks if the array of underscores is the right length" do
    guesser.underscore_array_creator(6)
    expect(guesser.guessed_letters_array).to eq ["_", "_", "_", "_", "_", "_"]
  end

  it "returns a string with guessed letters" do
    guesser.word_checker("tomato")
    guesser.matching_letters.to eq "_o_ato"
  end
end