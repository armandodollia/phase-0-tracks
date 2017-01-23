require_relative 'word_guesser'

describe Word_guesser do
  let(:guesser) { Word_guesser.new("potato") }

  it "returns a string with guessed letters" do   
    expect(guesser.matching_letters("o")).to eq "_o___o"
  end

  it "checks if the user is done guessing" do
    expect(guesser.done_guessing).to eq false
  end
end