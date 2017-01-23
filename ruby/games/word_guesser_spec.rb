require_relative 'word_guesser'

describe Word_guesser do
  let(:guesser) { Word_guesser.new("potato") }

  it "returns a string with guessed letters" do
    expect(guesser.matching_letters("o")).to eq ["_", "o", "_", "_", "_", "o"]
  end
end